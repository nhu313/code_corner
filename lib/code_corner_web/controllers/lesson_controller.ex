defmodule CodeCornerWeb.LessonController do
  use CodeCornerWeb, :controller

  alias CodeCorner.Class
  alias CodeCorner.Class.Lesson

  def index(conn, _params) do
    lessons = Class.list_lessons()
    render(conn, :index, lessons: lessons)
  end

  def variables(conn, _params) do
    render(conn, :variables)
  end

  def data_types(conn, _params) do
    render(conn, :data_types)
  end

  def new(conn, _params) do
    changeset = Class.change_lesson(%Lesson{})
    render(conn, :new, changeset: changeset)
  end

  def create(conn, %{"lesson" => lesson_params}) do
    case Class.create_lesson(lesson_params) do
      {:ok, lesson} ->
        conn
        |> put_flash(:info, "Lesson created successfully.")
        |> redirect(to: ~p"/lessons/#{lesson}")

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, :new, changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    lesson = Class.get_lesson!(id)
    render(conn, :show, lesson: lesson)
  end

  def edit(conn, %{"id" => id}) do
    lesson = Class.get_lesson!(id)
    changeset = Class.change_lesson(lesson)
    render(conn, :edit, lesson: lesson, changeset: changeset)
  end

  def update(conn, %{"id" => id, "lesson" => lesson_params}) do
    lesson = Class.get_lesson!(id)

    case Class.update_lesson(lesson, lesson_params) do
      {:ok, lesson} ->
        conn
        |> put_flash(:info, "Lesson updated successfully.")
        |> redirect(to: ~p"/lessons/#{lesson}")

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, :edit, lesson: lesson, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    lesson = Class.get_lesson!(id)
    {:ok, _lesson} = Class.delete_lesson(lesson)

    conn
    |> put_flash(:info, "Lesson deleted successfully.")
    |> redirect(to: ~p"/lessons")
  end

end
