defmodule CodeCornerWeb.ProblemLive.Index do
  use CodeCornerWeb, :live_view

  alias CodeCorner.Practices
  alias CodeCorner.Practices.Problem

  @impl true
  def mount(_params, _session, socket) do
    {:ok, stream(socket, :problems, Practices.list_problems())}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  defp apply_action(socket, :edit, %{"id" => id}) do
    socket
    |> assign(:page_title, "Edit Problem")
    |> assign(:problem, Practices.get_problem!(id))
  end

  defp apply_action(socket, :new, _params) do
    socket
    |> assign(:page_title, "New Problem")
    |> assign(:problem, %Problem{})
  end

  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:page_title, "Listing Problems")
    |> assign(:problem, nil)
  end

  @impl true
  def handle_info({CodeCornerWeb.ProblemLive.FormComponent, {:saved, problem}}, socket) do
    {:noreply, stream_insert(socket, :problems, problem)}
  end

  @impl true
  def handle_event("delete", %{"id" => id}, socket) do
    problem = Practices.get_problem!(id)
    {:ok, _} = Practices.delete_problem(problem)

    {:noreply, stream_delete(socket, :problems, problem)}
  end
end
