defmodule CodeCornerWeb.UserController do
  use CodeCornerWeb, :controller

  alias CodeCorner.Accounts

  def index(conn, _params) do
    render(conn, :user_list, users: Accounts.list_users())
  end
end
