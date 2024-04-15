defmodule CodeCorner.Repo.Migrations.CreateQuizQuestions do
  use Ecto.Migration

  def change do
    create table(:quiz_questions) do
      add :quiz_id, :integer
      add :answer, :string
      add :description, :string

      timestamps(type: :utc_datetime)
    end
  end
end
