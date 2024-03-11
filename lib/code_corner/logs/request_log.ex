defmodule CodeCorner.Logs.RequestLog do
  use Ecto.Schema
  import Ecto.Changeset

  schema "request_logs" do
    field :path, :string
    field :user_id, :integer

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(request_log, attrs) do
    request_log
    |> cast(attrs, [:user_id, :path])
    |> validate_required([:user_id, :path])
  end
end
