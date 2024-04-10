defmodule CodeCornerWeb.PracticeProblemLive do
  use CodeCornerWeb, :live_view

  attr :problem_id, :string, default: nil
  def render(assigns) do
    ~H"""
    <.one_input_form for={@form} phx-submit="submit_answer" class="flex align-top mx-auto">
      <.input type="text" field={@form[:answer]} placeholder="Enter code" class="practice-input"/>
      <.button class="practice-submit">Submit</.button>
    </.one_input_form>
    """
  end

  def mount(_params, session, socket) do
    form_fields = %{"answer" => "", "problem_id" => session["problem_id"]}
    {:ok, assign(socket, :form, to_form(form_fields))}
  end

  def handle_event("submit_answer", params, socket) do
    IO.inspect params
    IO.inspect socket
    IO.puts '---------------------------submit answer'
    form = to_form(params, errors: [])
    {:reply, %{status: 'ok'}, assign(socket, :form, form)}
  end
end
