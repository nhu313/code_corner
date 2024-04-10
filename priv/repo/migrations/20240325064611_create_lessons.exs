defmodule CodeCorner.Repo.Migrations.CreateLessons do
  use Ecto.Migration

  def change do
    create table(:lessons) do
      add :order, :integer
      add :name, :string
      add :slug, :string

      timestamps(type: :utc_datetime)
    end
  end
end
