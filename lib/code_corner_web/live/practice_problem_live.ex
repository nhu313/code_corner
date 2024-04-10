defmodule CodeCornerWeb.PracticeProblemLive do
  use CodeCornerWeb, :live_view

  def render(assigns) do
    ~H"""
    <div class="flex items-center mx-auto">
      <input type="text" class="bg-gray-50 border border-gray-600 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full ps-10 p-2.5  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Enter code" />
      <button type="submit" class="practice-submit" phx-click="submit_answer">
        Submit
      </button>
    </div>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def handle_event("submit_answer", wat, socket) do
    IO.inspect wat
    IO.inspect socket
    IO.puts '---------------------------submit answer'
    {:reply, %{"status": "failed"}, socket}
  end
end
