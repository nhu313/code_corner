defmodule CodeCornerWeb.LessonHTML do
  use CodeCornerWeb, :html

  embed_templates "lesson_html/*"

  @doc """
  Renders a lesson form.
  """
  attr :changeset, Ecto.Changeset, required: true
  attr :action, :string, required: true

  def lesson_form(assigns)
end
