defmodule CodeCornerWeb.QuizSubmissionController do
  use CodeCornerWeb, :controller

  alias CodeCorner.Class
  alias CodeCorner.Class.QuizSubmission

  def index(conn, _params) do
    quiz_submissions = Class.list_quiz_submissions()
    render(conn, :index, quiz_submissions: quiz_submissions)
  end

  def new(conn, _params) do
    changeset = Class.change_quiz_submission(%QuizSubmission{})
    render(conn, :new, changeset: changeset)
  end

  def create(conn, %{"quiz_submission" => quiz_submission_params}) do
    case Class.create_quiz_submission(quiz_submission_params) do
      {:ok, quiz_submission} ->
        conn
        |> put_flash(:info, "Quiz submission created successfully.")
        |> redirect(to: ~p"/quiz_submissions/#{quiz_submission}")

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, :new, changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    quiz_submission = Class.get_quiz_submission!(id)
    render(conn, :show, quiz_submission: quiz_submission)
  end

  def edit(conn, %{"id" => id}) do
    quiz_submission = Class.get_quiz_submission!(id)
    changeset = Class.change_quiz_submission(quiz_submission)
    render(conn, :edit, quiz_submission: quiz_submission, changeset: changeset)
  end

  def update(conn, %{"id" => id, "quiz_submission" => quiz_submission_params}) do
    quiz_submission = Class.get_quiz_submission!(id)

    case Class.update_quiz_submission(quiz_submission, quiz_submission_params) do
      {:ok, quiz_submission} ->
        conn
        |> put_flash(:info, "Quiz submission updated successfully.")
        |> redirect(to: ~p"/quiz_submissions/#{quiz_submission}")

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, :edit, quiz_submission: quiz_submission, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    quiz_submission = Class.get_quiz_submission!(id)
    {:ok, _quiz_submission} = Class.delete_quiz_submission(quiz_submission)

    conn
    |> put_flash(:info, "Quiz submission deleted successfully.")
    |> redirect(to: ~p"/quiz_submissions")
  end
end
