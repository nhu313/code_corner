defmodule CodeCornerWeb.QuizResultController do
  use CodeCornerWeb, :controller

  alias CodeCorner.Class
  alias CodeCorner.Class.QuizResult

  def index(conn, _params) do
    quiz_results = Class.list_quiz_results()
    render(conn, :index, quiz_results: quiz_results)
  end

  def new(conn, _params) do
    changeset = Class.change_quiz_result(%QuizResult{})
    render(conn, :new, changeset: changeset)
  end

  def create(conn, %{"quiz_result" => quiz_result_params}) do
    case Class.create_quiz_result(quiz_result_params) do
      {:ok, quiz_result} ->
        conn
        |> put_flash(:info, "Quiz result created successfully.")
        |> redirect(to: ~p"/quiz_results/#{quiz_result}")

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, :new, changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    quiz_result = Class.get_quiz_result!(id)
    render(conn, :show, quiz_result: quiz_result)
  end

  def edit(conn, %{"id" => id}) do
    quiz_result = Class.get_quiz_result!(id)
    changeset = Class.change_quiz_result(quiz_result)
    render(conn, :edit, quiz_result: quiz_result, changeset: changeset)
  end

  def update(conn, %{"id" => id, "quiz_result" => quiz_result_params}) do
    quiz_result = Class.get_quiz_result!(id)

    case Class.update_quiz_result(quiz_result, quiz_result_params) do
      {:ok, quiz_result} ->
        conn
        |> put_flash(:info, "Quiz result updated successfully.")
        |> redirect(to: ~p"/quiz_results/#{quiz_result}")

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, :edit, quiz_result: quiz_result, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    quiz_result = Class.get_quiz_result!(id)
    {:ok, _quiz_result} = Class.delete_quiz_result(quiz_result)

    conn
    |> put_flash(:info, "Quiz result deleted successfully.")
    |> redirect(to: ~p"/quiz_results")
  end
end
