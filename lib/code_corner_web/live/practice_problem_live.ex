defmodule CodeCornerWeb.PracticeProblemLive do
  use CodeCornerWeb, :live_view
  alias CodeCorner.Practices

  attr :problem_id, :string, default: nil
  def render(assigns) do
    ~H"""
    <.one_input_form for={@form} phx-submit="submit_answer" class="flex align-top mx-auto">
      <.input type={@input_type} field={@form[:answer]} placeholder="Enter code" class="practice-input" autocomplete="off"/>
      <.input type="hidden" field={@form[:problem_id]} />
      <.input type="hidden" field={@form[:user_id]} />
      <.button class="practice-submit">Submit</.button>
      <%= if @result == "ok" do %>
        <i class="fa fa-circle-check checkmark checked answer-check"></i>
      <% end %>
      <%= if @result == "failed" do %>
        <i class="fa fa-circle-xmark checkmark answer-check xmark"></i>
      <% end %>
    </.one_input_form>
    """
  end

  def mount(_params, session, socket) do
    form_fields = %{"answer" => "", "problem_id" => session["problem_id"], "user_id" => session["user_id"]}
    input_type = if session["input_type"], do: session["input_type"], else: "text"
    socket = socket
            |> assign(:form, to_form(form_fields))
            |> assign(:result, "")
            |> assign(:input_type, input_type)
    {:ok, socket}
  end

  def handle_event("submit_answer", params, socket) do
    result = Practices.submit_answer(params)
    socket = assign(socket, :form, to_form(params))
    socket = assign(socket, :result, result.result)
    {:noreply, socket}
  end
end
