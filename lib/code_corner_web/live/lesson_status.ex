defmodule CodeCornerWeb.LessonStatus do
  use CodeCornerWeb, :verified_routes

  import Plug.Conn

  def fetch_lesson_status(conn, _opts) do
    if conn.assigns[:current_user] do
      status = CodeCorner.Practices.fetch_user_lesson_status(conn.assigns[:current_user].id)
      assign(conn, :lesson_status, status)
    else
      conn
    end
  end
end
