defmodule CodeCorner.Class.Lesson do
  use Ecto.Schema
  import Ecto.Changeset

  schema "lessons" do
    field :name, :string
    field :order, :integer
    field :slug, :string
    field :completed, :boolean, virtual: true

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(lesson, attrs) do
    lesson
    |> cast(attrs, [:order, :name, :slug])
    |> validate_required([:order, :name, :slug])
  end
end
