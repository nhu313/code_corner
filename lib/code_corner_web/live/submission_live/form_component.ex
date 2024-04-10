defmodule CodeCornerWeb.SubmissionLive.FormComponent do
  use CodeCornerWeb, :live_component

  alias CodeCorner.Practices

  @impl true
  def render(assigns) do
    ~H"""
    <div>
      <.header>
        <%= @title %>
        <:subtitle>Use this form to manage submission records in your database.</:subtitle>
      </.header>

      <.simple_form
        for={@form}
        id="submission-form"
        phx-target={@myself}
        phx-change="validate"
        phx-submit="save"
      >
        <.input field={@form[:user_id]} type="number" label="User" />
        <.input field={@form[:problem_id]} type="number" label="Problem Id" />
        <.input field={@form[:answer]} type="text" label="answer" />
        <:actions>
          <.button phx-disable-with="Saving...">Save Submission</.button>
        </:actions>
      </.simple_form>
    </div>
    """
  end

  @impl true
  def update(%{submission: submission} = assigns, socket) do
    changeset = Practices.change_submission(submission)

    {:ok,
     socket
     |> assign(assigns)
     |> assign_form(changeset)}
  end

  @impl true
  def handle_event("validate", %{"submission" => submission_params}, socket) do
    changeset =
      socket.assigns.submission
      |> Practices.change_submission(submission_params)
      |> Map.put(:action, :validate)

    {:noreply, assign_form(socket, changeset)}
  end

  def handle_event("save", %{"submission" => submission_params}, socket) do
    save_submission(socket, socket.assigns.action, submission_params)
  end

  defp save_submission(socket, :edit, submission_params) do
    case Practices.update_submission(socket.assigns.submission, submission_params) do
      {:ok, submission} ->
        notify_parent({:saved, submission})

        {:noreply,
         socket
         |> put_flash(:info, "Submission updated successfully")
         |> push_patch(to: socket.assigns.patch)}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign_form(socket, changeset)}
    end
  end

  defp save_submission(socket, :new, submission_params) do
    case Practices.create_submission(submission_params) do
      {:ok, submission} ->
        notify_parent({:saved, submission})

        {:noreply,
         socket
         |> put_flash(:info, "Submission created successfully")
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
