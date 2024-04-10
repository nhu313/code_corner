defmodule CodeCorner.Repo.Migrations.CreateProblems do
  use Ecto.Migration

  def change do
    create table(:problems) do
      add :lesson_id, :integer
      add :group, :string
      add :description, :string
      add :answer, :string

      timestamps(type: :utc_datetime)
    end
  end
end
