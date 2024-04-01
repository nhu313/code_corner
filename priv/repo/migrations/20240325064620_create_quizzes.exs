defmodule CodeCorner.Repo.Migrations.CreateQuizzes do
  use Ecto.Migration

  def change do
    create table(:quizzes) do
      add :lesson_id, :integer
      add :order_id, :integer
      add :name, :string
      add :answer, :string

      timestamps(type: :utc_datetime)
    end
  end
end
