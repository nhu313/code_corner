defmodule CodeCorner.Class.QuizQuestion do
  use Ecto.Schema
  import Ecto.Changeset

  schema "quiz_questions" do
    field :description, :string
    field :quiz_id, :integer
    field :answer, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(quiz_question, attrs) do
    quiz_question
    |> cast(attrs, [:quiz_id, :answer, :description])
    |> validate_required([:quiz_id, :answer, :description])
  end
end
