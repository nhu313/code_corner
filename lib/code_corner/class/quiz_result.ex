defmodule CodeCorner.Class.QuizResult do
  use Ecto.Schema
  import Ecto.Changeset

  schema "quiz_results" do
    field :success, :boolean, default: false
    field :errors, :string
    field :quiz_id, :integer
    field :student_id, :integer
    field :submission, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(quiz_result, attrs) do
    quiz_result
    |> cast(attrs, [:quiz_id, :student_id, :success, :submission, :errors])
    |> validate_required([:quiz_id, :student_id, :success, :submission, :errors])
  end
end
