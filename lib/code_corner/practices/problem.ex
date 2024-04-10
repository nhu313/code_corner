defmodule CodeCorner.Practices.Problem do
  use Ecto.Schema
  import Ecto.Changeset

  schema "problems" do
    field :description, :string
    field :lesson_id, :integer
    field :answer, :string
    field :group, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(problem, attrs) do
    problem
    |> cast(attrs, [:lesson_id, :description, :answer])
    |> validate_required([:lesson_id, :description, :answer])
  end
end
