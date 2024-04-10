defmodule CodeCorner.Repo.Migrations.CreateSubmissions do
  use Ecto.Migration

  def change do
    create table(:submissions) do
      add :user_id, :integer
      add :practice_id, :integer
      add :input, :string

      timestamps(type: :utc_datetime)
    end
  end
end
