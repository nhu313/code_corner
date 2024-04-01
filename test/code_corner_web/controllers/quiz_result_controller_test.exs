defmodule CodeCornerWeb.QuizResultControllerTest do
  use CodeCornerWeb.ConnCase

  import CodeCorner.ClassFixtures

  @create_attrs %{success: true, errors: "some errors", quiz_id: 42, student_id: 42, submission: "some submission"}
  @update_attrs %{success: false, errors: "some updated errors", quiz_id: 43, student_id: 43, submission: "some updated submission"}
  @invalid_attrs %{success: nil, errors: nil, quiz_id: nil, student_id: nil, submission: nil}

  describe "index" do
    test "lists all quiz_results", %{conn: conn} do
      conn = get(conn, ~p"/quiz_results")
      assert html_response(conn, 200) =~ "Listing Quiz results"
    end
  end

  describe "new quiz_result" do
    test "renders form", %{conn: conn} do
      conn = get(conn, ~p"/quiz_results/new")
      assert html_response(conn, 200) =~ "New Quiz result"
    end
  end

  describe "create quiz_result" do
    test "redirects to show when data is valid", %{conn: conn} do
      conn = post(conn, ~p"/quiz_results", quiz_result: @create_attrs)

      assert %{id: id} = redirected_params(conn)
      assert redirected_to(conn) == ~p"/quiz_results/#{id}"

      conn = get(conn, ~p"/quiz_results/#{id}")
      assert html_response(conn, 200) =~ "Quiz result #{id}"
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, ~p"/quiz_results", quiz_result: @invalid_attrs)
      assert html_response(conn, 200) =~ "New Quiz result"
    end
  end

  describe "edit quiz_result" do
    setup [:create_quiz_result]

    test "renders form for editing chosen quiz_result", %{conn: conn, quiz_result: quiz_result} do
      conn = get(conn, ~p"/quiz_results/#{quiz_result}/edit")
      assert html_response(conn, 200) =~ "Edit Quiz result"
    end
  end

  describe "update quiz_result" do
    setup [:create_quiz_result]

    test "redirects when data is valid", %{conn: conn, quiz_result: quiz_result} do
      conn = put(conn, ~p"/quiz_results/#{quiz_result}", quiz_result: @update_attrs)
      assert redirected_to(conn) == ~p"/quiz_results/#{quiz_result}"

      conn = get(conn, ~p"/quiz_results/#{quiz_result}")
      assert html_response(conn, 200) =~ "some updated errors"
    end

    test "renders errors when data is invalid", %{conn: conn, quiz_result: quiz_result} do
      conn = put(conn, ~p"/quiz_results/#{quiz_result}", quiz_result: @invalid_attrs)
      assert html_response(conn, 200) =~ "Edit Quiz result"
    end
  end

  describe "delete quiz_result" do
    setup [:create_quiz_result]

    test "deletes chosen quiz_result", %{conn: conn, quiz_result: quiz_result} do
      conn = delete(conn, ~p"/quiz_results/#{quiz_result}")
      assert redirected_to(conn) == ~p"/quiz_results"

      assert_error_sent 404, fn ->
        get(conn, ~p"/quiz_results/#{quiz_result}")
      end
    end
  end

  defp create_quiz_result(_) do
    quiz_result = quiz_result_fixture()
    %{quiz_result: quiz_result}
  end
end
