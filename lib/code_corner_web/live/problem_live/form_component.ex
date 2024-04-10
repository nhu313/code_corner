defmodule CodeCornerWeb.ProblemLive.FormComponent do
  use CodeCornerWeb, :live_component

  alias CodeCorner.Practices

  @impl true
  def render(assigns) do
    ~H"""
    <div>
      <.header>
        <%= @title %>
        <:subtitle>Use this form to manage problem records in your database.</:subtitle>
      </.header>

      <.simple_form
        for={@form}
        id="problem-form"
        phx-target={@myself}
        phx-change="validate"
        phx-submit="save"
      >
        <.input field={@form[:lesson_id]} type="number" label="Lesson" />
        <.input field={@form[:description]} type="text" label="Description" />
        <.input field={@form[:answer]} type="text" label="Answer" />
        <:actions>
          <.button phx-disable-with="Saving...">Save Problem</.button>
        </:actions>
      </.simple_form>
    </div>
    """
  end

  @impl true
  def update(%{problem: problem} = assigns, socket) do
    changeset = Practices.change_problem(problem)

    {:ok,
     socket
     |> assign(assigns)
     |> assign_form(changeset)}
  end

  @impl true
  def handle_event("validate", %{"problem" => problem_params}, socket) do
    changeset =
      socket.assigns.problem
      |> Practices.change_problem(problem_params)
      |> Map.put(:action, :validate)

    {:noreply, assign_form(socket, changeset)}
  end

  def handle_event("save", %{"problem" => problem_params}, socket) do
    save_problem(socket, socket.assigns.action, problem_params)
  end

  defp save_problem(socket, :edit, problem_params) do
    case Practices.update_problem(socket.assigns.problem, problem_params) do
      {:ok, problem} ->
        notify_parent({:saved, problem})

        {:noreply,
         socket
         |> put_flash(:info, "Problem updated successfully")
         |> push_patch(to: socket.assigns.patch)}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign_form(socket, changeset)}
    end
  end

  defp save_problem(socket, :new, problem_params) do
    case Practices.create_problem(problem_params) do
      {:ok, problem} ->
        notify_parent({:saved, problem})

        {:noreply,
         socket
         |> put_flash(:info, "Problem created successfully")
         |> push_patch(to: socket.assigns.patch)}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign_form(socket, changeset)}
    end
  end

  defp assign_form(socket, %Ecto.Changeset{} = changeset) do
    assign(socket, :form, to_form(changeset))
  end

  defp notify_parent(msg), do: send(self(), {__MODULE__, msg})
end
