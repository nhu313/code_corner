defmodule CodeCorner.Repo.Migrations.CreateRequestLogs do
  use Ecto.Migration

  def change do
    create table(:request_logs) do
      add :user_id, :integer
      add :path, :string

      timestamps(type: :utc_datetime)
    end
  end
end
