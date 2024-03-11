defmodule CodeCornerWeb.RequestLogController do
  use CodeCornerWeb, :controller

  alias CodeCorner.Logs

  def index(conn, _params) do
    request_logs = Logs.list_request_logs()
    render(conn, :index, request_logs: request_logs)
  end

  def user(conn, %{"user_id" => user_id}) do
    request_logs = Logs.request_logs_by_user(user_id)
    render(conn, :index, request_logs: request_logs)
  end

  def delete(conn, %{"id" => id}) do
    request_log = Logs.get_request_log!(id)
    {:ok, _request_log} = Logs.delete_request_log(request_log)

    conn
    |> put_flash(:info, "Request log deleted successfully.")
    |> redirect(to: ~p"/admin/request_logs")
  end
end
