defmodule CodeCorner.Practices.Submission do
  use Ecto.Schema
  import Ecto.Changeset

  schema "submissions" do
    field :input, :string
    field :user_id, :integer
    field :practice_id, :integer

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(submission, attrs) do
    submission
    |> cast(attrs, [:user_id, :practice_id, :input])
    |> validate_required([:user_id, :practice_id, :input])
  end
end
