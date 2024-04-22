defmodule CodeCorner.Repo.Migrations.CreateQuizSubmissions do
  use Ecto.Migration

  def change do
    create table(:quiz_submissions) do
      add :quiz_id, :integer
      add :question_id, :integer
      add :student_id, :integer
      add :answer, {:array, :string}
      add :correct, :boolean, default: false, null: false

      timestamps(type: :utc_datetime)
    end
  end
end
