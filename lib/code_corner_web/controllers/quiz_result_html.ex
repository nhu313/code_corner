defmodule CodeCornerWeb.QuizResultHTML do
  use CodeCornerWeb, :html

  embed_templates "quiz_result_html/*"

  @doc """
  Renders a quiz_result form.
  """
  attr :changeset, Ecto.Changeset, required: true
  attr :action, :string, required: true

  def quiz_result_form(assigns)
end
