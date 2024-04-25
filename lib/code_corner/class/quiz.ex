defmodule CodeCorner.Class.Quiz do
  use Ecto.Schema
  import Ecto.Changeset

  schema "quizzes" do
    field :name, :string
    field :lesson_id, :integer
    field :order_id, :integer
    field :answer, :string
    field :completed, :boolean, virtual: true
    field :slug, :string

    has_many :questions, CodeCorner.Class.QuizQuestion, on_delete: :delete_all
    has_many :submissions, CodeCorner.Class.QuizSubmission

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(quiz, attrs) do
    quiz
    |> cast(attrs, [:lesson_id, :order_id, :name, :answer])
    |> validate_required([:lesson_id, :order_id, :name, :answer])
  end
end
