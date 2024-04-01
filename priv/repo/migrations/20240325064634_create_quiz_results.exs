defmodule CodeCorner.Repo.Migrations.CreateQuizResults do
  use Ecto.Migration

  def change do
    create table(:quiz_results) do
      add :quiz_id, :integer
      add :student_id, :integer
      add :success, :boolean, default: false, null: false
      add :submission, :string
      add :errors, :string

      timestamps(type: :utc_datetime)
    end
  end
end
