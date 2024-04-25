defmodule CodeCorner.Repo.Migrations.AddQuizSlug do
  use Ecto.Migration

  def change do
    alter table("quizzes") do
      add :slug, :string
    end
  end
end
