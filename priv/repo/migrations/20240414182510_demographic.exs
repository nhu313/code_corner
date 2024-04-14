defmodule CodeCorner.Repo.Migrations.Demographic do
  use Ecto.Migration

  def change do
    alter table("users") do
      add :years_of_experience, :string
    end
  end
end
