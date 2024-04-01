defmodule CodeCornerWeb.LessonControllerTest do
  use CodeCornerWeb.ConnCase

  import CodeCorner.ClassFixtures

  @create_attrs %{name: "some name", order: 42, view: "some view"}
  @update_attrs %{name: "some updated name", order: 43, view: "some updated view"}
  @invalid_attrs %{name: nil, order: nil, view: nil}

  describe "index" do
    test "lists all lessons", %{conn: conn} do
      conn = get(conn, ~p"/lessons")
      assert html_response(conn, 200) =~ "Listing Lessons"
    end
  end

  describe "new lesson" do
    test "renders form", %{conn: conn} do
      conn = get(conn, ~p"/lessons/new")
      assert html_response(conn, 200) =~ "New Lesson"
    end
  end

  describe "create lesson" do
    test "redirects to show when data is valid", %{conn: conn} do
      conn = post(conn, ~p"/lessons", lesson: @create_attrs)

      assert %{id: id} = redirected_params(conn)
      assert redirected_to(conn) == ~p"/lessons/#{id}"

      conn = get(conn, ~p"/lessons/#{id}")
      assert html_response(conn, 200) =~ "Lesson #{id}"
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, ~p"/lessons", lesson: @invalid_attrs)
      assert html_response(conn, 200) =~ "New Lesson"
    end
  end

  describe "edit lesson" do
    setup [:create_lesson]

    test "renders form for editing chosen lesson", %{conn: conn, lesson: lesson} do
      conn = get(conn, ~p"/lessons/#{lesson}/edit")
      assert html_response(conn, 200) =~ "Edit Lesson"
    end
  end

  describe "update lesson" do
    setup [:create_lesson]

    test "redirects when data is valid", %{conn: conn, lesson: lesson} do
      conn = put(conn, ~p"/lessons/#{lesson}", lesson: @update_attrs)
      assert redirected_to(conn) == ~p"/lessons/#{lesson}"

      conn = get(conn, ~p"/lessons/#{lesson}")
      assert html_response(conn, 200) =~ "some updated name"
    end

    test "renders errors when data is invalid", %{conn: conn, lesson: lesson} do
      conn = put(conn, ~p"/lessons/#{lesson}", lesson: @invalid_attrs)
      assert html_response(conn, 200) =~ "Edit Lesson"
    end
  end

  describe "delete lesson" do
    setup [:create_lesson]

    test "deletes chosen lesson", %{conn: conn, lesson: lesson} do
      conn = delete(conn, ~p"/lessons/#{lesson}")
      assert redirected_to(conn) == ~p"/lessons"

      assert_error_sent 404, fn ->
        get(conn, ~p"/lessons/#{lesson}")
      end
    end
  end

  defp create_lesson(_) do
    lesson = lesson_fixture()
    %{lesson: lesson}
  end
end
