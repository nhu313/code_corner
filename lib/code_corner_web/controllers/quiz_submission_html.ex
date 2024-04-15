defmodule CodeCornerWeb.QuizSubmissionHTML do
  use CodeCornerWeb, :html

  embed_templates "quiz_submission_html/*"

  @doc """
  Renders a quiz_submission form.
  """
  attr :changeset, Ecto.Changeset, required: true
  attr :action, :string, required: true

  def quiz_submission_form(assigns)
end
