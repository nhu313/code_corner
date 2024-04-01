defmodule CodeCorner.Class.Lesson do
  use Ecto.Schema
  import Ecto.Changeset

  schema "lessons" do
    field :name, :string
    field :order, :integer
    field :view, :string
    field :completed, :boolean, virtual: true

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(lesson, attrs) do
    lesson
    |> cast(attrs, [:order, :name, :view])
    |> validate_required([:order, :name, :view])
  end
end
