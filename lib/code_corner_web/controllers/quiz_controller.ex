defmodule CodeCornerWeb.QuizController do
  use CodeCornerWeb, :controller

  alias CodeCorner.Class
  alias CodeCorner.Class.Quiz

  def index(conn, _params) do
    quizzes = Class.list_quizzes()
    render(conn, :index, quizzes: quizzes)
  end

  def pre_quiz(conn, _params) do
    changeset = Class.change_quiz(%Quiz{})
    render(conn, :pre_quiz, changeset: changeset)
  end

  @spec submit_pre_quiz(Plug.Conn.t(), any()) :: Plug.Conn.t()
  def submit_pre_quiz(conn, params) do
    submissions = params["submissions"] || {}
    attrs = %{
      quiz_id: params["quiz_id"],
      student: conn.assigns[:current_user],
      submissions: submissions
    }

    CodeCorner.Class.submit_quiz(attrs)
    # render(conn, :submit_pre_quiz)
    conn
    |> put_flash(:info, "Pre Quiz submitted! Let's start our lesson!")
    |> redirect(to: ~p"/lessons/data_types")
  end

  def submit_post_quiz(conn, params) do
    submissions = params["submissions"] || {}
    attrs = %{
      quiz_id: params["quiz_id"],
      student: conn.assigns[:current_user],
      submissions: submissions
    }

    CodeCorner.Class.submit_quiz(attrs)
    render(conn, :submit_post_quiz)
  end

  def post_quiz(conn, _params) do
    changeset = Class.change_quiz(%Quiz{})
    render(conn, :post_quiz, changeset: changeset)
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
