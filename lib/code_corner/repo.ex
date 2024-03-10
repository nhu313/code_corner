defmodule CodeCorner.Repo do
  use Ecto.Repo,
    otp_app: :code_corner,
    adapter: Ecto.Adapters.Postgres
end
