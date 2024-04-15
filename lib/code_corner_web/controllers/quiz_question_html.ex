defmodule CodeCornerWeb.QuizQuestionHTML do
  use CodeCornerWeb, :html

  embed_templates "quiz_question_html/*"

  @doc """
  Renders a quiz_question form.
  """
  attr :changeset, Ecto.Changeset, required: true
  attr :action, :string, required: true

  def quiz_question_form(assigns)
end
