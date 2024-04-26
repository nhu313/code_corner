defmodule CodeCorner.Repo.Migrations.ChangeProblemAnswerSize do
  use Ecto.Migration

  def change do
    alter table(:problems) do
      modify :answer, :text
    end
  end
end
