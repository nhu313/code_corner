defmodule CodeCorner.Practices.Submission do
  use Ecto.Schema
  import Ecto.Changeset

  schema "submissions" do
    field :answer, :string
    field :user_id, :integer
    field :problem_id, :integer

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(submission, attrs) do
    submission
    |> cast(attrs, [:user_id, :problem_id, :answer])
    |> validate_required([:user_id, :problem_id, :answer])
  end
end
