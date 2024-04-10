defmodule CodeCornerWeb.ProblemLiveTest do
  use CodeCornerWeb.ConnCase

  import Phoenix.LiveViewTest
  import CodeCorner.PracticesFixtures

  @create_attrs %{description: "some description", lesson_id: 42, answer: "some answer"}
  @update_attrs %{description: "some updated description", lesson_id: 43, answer: "some updated answer"}
  @invalid_attrs %{description: nil, lesson_id: nil, answer: nil}

  defp create_problem(_) do
    problem = problem_fixture()
    %{problem: problem}
  end

  describe "Index" do
    setup [:create_problem]

    test "lists all problems", %{conn: conn, problem: problem} do
      {:ok, _index_live, html} = live(conn, ~p"/problems")

      assert html =~ "Listing Problems"
      assert html =~ problem.description
    end

    test "saves new problem", %{conn: conn} do
      {:ok, index_live, _html} = live(conn, ~p"/problems")

      assert index_live |> element("a", "New Problem") |> render_click() =~
               "New Problem"

      assert_patch(index_live, ~p"/problems/new")

      assert index_live
             |> form("#problem-form", problem: @invalid_attrs)
             |> render_change() =~ "can&#39;t be blank"

      assert index_live
             |> form("#problem-form", problem: @create_attrs)
             |> render_submit()

      assert_patch(index_live, ~p"/problems")

      html = render(index_live)
      assert html =~ "Problem created successfully"
      assert html =~ "some description"
    end

    test "updates problem in listing", %{conn: conn, problem: problem} do
      {:ok, index_live, _html} = live(conn, ~p"/problems")

      assert index_live |> element("#problems-#{problem.id} a", "Edit") |> render_click() =~
               "Edit Problem"

      assert_patch(index_live, ~p"/problems/#{problem}/edit")

      assert index_live
             |> form("#problem-form", problem: @invalid_attrs)
             |> render_change() =~ "can&#39;t be blank"

      assert index_live
             |> form("#problem-form", problem: @update_attrs)
             |> render_submit()

      assert_patch(index_live, ~p"/problems")

      html = render(index_live)
      assert html =~ "Problem updated successfully"
      assert html =~ "some updated description"
    end

    test "deletes problem in listing", %{conn: conn, problem: problem} do
      {:ok, index_live, _html} = live(conn, ~p"/problems")

      assert index_live |> element("#problems-#{problem.id} a", "Delete") |> render_click()
      refute has_element?(index_live, "#problems-#{problem.id}")
    end
  end

  describe "Show" do
    setup [:create_problem]

    test "displays problem", %{conn: conn, problem: problem} do
      {:ok, _show_live, html} = live(conn, ~p"/problems/#{problem}")

      assert html =~ "Show Problem"
      assert html =~ problem.description
    end

    test "updates problem within modal", %{conn: conn, problem: problem} do
      {:ok, show_live, _html} = live(conn, ~p"/problems/#{problem}")

      assert show_live |> element("a", "Edit") |> render_click() =~
               "Edit Problem"

      assert_patch(show_live, ~p"/problems/#{problem}/show/edit")

      assert show_live
             |> form("#problem-form", problem: @invalid_attrs)
             |> render_change() =~ "can&#39;t be blank"

      assert show_live
             |> form("#problem-form", problem: @update_attrs)
             |> render_submit()

      assert_patch(show_live, ~p"/problems/#{problem}")

      html = render(show_live)
      assert html =~ "Problem updated successfully"
      assert html =~ "some updated description"
    end
  end
end
