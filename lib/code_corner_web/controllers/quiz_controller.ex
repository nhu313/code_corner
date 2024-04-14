defmodule CodeCornerWeb.QuizController do
  use CodeCornerWeb, :controller

  alias CodeCorner.Class
  alias CodeCorner.Class.Quiz

  def index(conn, _params) do
    quizzes = Class.list_quizzes()
    render(conn, :index, quizzes: quizzes)
  end

  def pre_quiz(conn, _params) do
    render(conn, :pre_quiz)
  end

  def submit_pre_quiz(conn, params) do
    # TODO
    render(conn, :submit_pre_quiz)
  end

  def submit_post_quiz(conn, params) do
    # TODO
    render(conn, :submit_post_quiz)
  end

  def post_quiz(conn, _params) do
    render(conn, :post_quiz)
  end

  def new(conn, _params) do
    changeset = Class.change_quiz(%Quiz{})
    render(conn, :new, changeset: changeset)
  end

  def create(conn, %{"quiz" => quiz_params}) do
    case Class.create_quiz(quiz_params) do
      {:ok, quiz} ->
        conn
        |> put_flash(:info, "Quiz created successfully.")
        |> redirect(to: ~p"/quizzes/#{quiz}")

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, :new, changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    quiz = Class.get_quiz!(id)
    render(conn, :show, quiz: quiz)
  end

  def edit(conn, %{"id" => id}) do
    quiz = Class.get_quiz!(id)
    changeset = Class.change_quiz(quiz)
    render(conn, :edit, quiz: quiz, changeset: changeset)
  end

  def update(conn, %{"id" => id, "quiz" => quiz_params}) do
    quiz = Class.get_quiz!(id)

    case Class.update_quiz(quiz, quiz_params) do
      {:ok, quiz} ->
        conn
        |> put_flash(:info, "Quiz updated successfully.")
        |> redirect(to: ~p"/quizzes/#{quiz}")

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, :edit, quiz: quiz, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    quiz = Class.get_quiz!(id)
    {:ok, _quiz} = Class.delete_quiz(quiz)

    conn
    |> put_flash(:info, "Quiz deleted successfully.")
    |> redirect(to: ~p"/quizzes")
  end
end
