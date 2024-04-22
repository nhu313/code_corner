defmodule CodeCorner.Class.QuizSubmission do
  use Ecto.Schema
  import Ecto.Changeset

  schema "quiz_submissions" do
    field :quiz_id, :integer
    field :question_id, :integer
    field :student_id, :integer
    field :answer, {:array, :string}
    field :correct, :boolean, default: false

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(quiz_submission, attrs) do
    quiz_submission
    |> cast(attrs, [:quiz_id, :question_id, :student_id, :answer, :correct])
    |> validate_required([:quiz_id, :question_id, :student_id, :answer])
  end
end
