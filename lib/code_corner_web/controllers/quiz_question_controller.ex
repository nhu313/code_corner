defmodule CodeCornerWeb.QuizQuestionController do
  use CodeCornerWeb, :controller

  alias CodeCorner.Class
  alias CodeCorner.Class.QuizQuestion

  def index(conn, _params) do
    quiz_questions = Class.list_quiz_questions()
    render(conn, :index, quiz_questions: quiz_questions)
  end

  def new(conn, _params) do
    changeset = Class.change_quiz_question(%QuizQuestion{})
    render(conn, :new, changeset: changeset)
  end

  def create(conn, %{"quiz_question" => quiz_question_params}) do
    case Class.create_quiz_question(quiz_question_params) do
      {:ok, quiz_question} ->
        conn
        |> put_flash(:info, "Quiz question created successfully.")
        |> redirect(to: ~p"/quiz_questions/#{quiz_question}")

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, :new, changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    quiz_question = Class.get_quiz_question!(id)
    render(conn, :show, quiz_question: quiz_question)
  end

  def edit(conn, %{"id" => id}) do
    quiz_question = Class.get_quiz_question!(id)
    changeset = Class.change_quiz_question(quiz_question)
    render(conn, :edit, quiz_question: quiz_question, changeset: changeset)
  end

  def update(conn, %{"id" => id, "quiz_question" => quiz_question_params}) do
    quiz_question = Class.get_quiz_question!(id)

    case Class.update_quiz_question(quiz_question, quiz_question_params) do
      {:ok, quiz_question} ->
        conn
        |> put_flash(:info, "Quiz question updated successfully.")
        |> redirect(to: ~p"/quiz_questions/#{quiz_question}")

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, :edit, quiz_question: quiz_question, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    quiz_question = Class.get_quiz_question!(id)
    {:ok, _quiz_question} = Class.delete_quiz_question(quiz_question)

    conn
    |> put_flash(:info, "Quiz question deleted successfully.")
    |> redirect(to: ~p"/quiz_questions")
  end
end
