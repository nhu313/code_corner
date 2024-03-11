defmodule CodeCornerWeb.Plugs.RequestLog do

  def init(default), do: default


  def call(conn, _default) do
    if conn.assigns[:current_user] && conn.assigns[:current_user].admin do
      conn
    else
      user = conn.assigns[:current_user] || %{id: 0}
      %{user_id: user.id, path: conn.request_path}
      |> CodeCorner.Logs.create_request_log
    end

    conn
  end
end
