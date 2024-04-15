defmodule CodeCornerWeb.QuizQuestionControllerTest do
  use CodeCornerWeb.ConnCase

  import CodeCorner.ClassFixtures

  @create_attrs %{description: "some description", quiz_id: 42, answer: "some answer"}
  @update_attrs %{description: "some updated description", quiz_id: 43, answer: "some updated answer"}
  @invalid_attrs %{description: nil, quiz_id: nil, answer: nil}

  describe "index" do
    test "lists all quiz_questions", %{conn: conn} do
      conn = get(conn, ~p"/quiz_questions")
      assert html_response(conn, 200) =~ "Listing Quiz questions"
    end
  end

  describe "new quiz_question" do
    test "renders form", %{conn: conn} do
      conn = get(conn, ~p"/quiz_questions/new")
      assert html_response(conn, 200) =~ "New Quiz question"
    end
  end

  describe "create quiz_question" do
    test "redirects to show when data is valid", %{conn: conn} do
      conn = post(conn, ~p"/quiz_questions", quiz_question: @create_attrs)

      assert %{id: id} = redirected_params(conn)
      assert redirected_to(conn) == ~p"/quiz_questions/#{id}"

      conn = get(conn, ~p"/quiz_questions/#{id}")
      assert html_response(conn, 200) =~ "Quiz question #{id}"
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, ~p"/quiz_questions", quiz_question: @invalid_attrs)
      assert html_response(conn, 200) =~ "New Quiz question"
    end
  end

  describe "edit quiz_question" do
    setup [:create_quiz_question]

    test "renders form for editing chosen quiz_question", %{conn: conn, quiz_question: quiz_question} do
      conn = get(conn, ~p"/quiz_questions/#{quiz_question}/edit")
      assert html_response(conn, 200) =~ "Edit Quiz question"
    end
  end

  describe "update quiz_question" do
    setup [:create_quiz_question]

    test "redirects when data is valid", %{conn: conn, quiz_question: quiz_question} do
      conn = put(conn, ~p"/quiz_questions/#{quiz_question}", quiz_question: @update_attrs)
      assert redirected_to(conn) == ~p"/quiz_questions/#{quiz_question}"

      conn = get(conn, ~p"/quiz_questions/#{quiz_question}")
      assert html_response(conn, 200) =~ "some updated description"
    end

    test "renders errors when data is invalid", %{conn: conn, quiz_question: quiz_question} do
      conn = put(conn, ~p"/quiz_questions/#{quiz_question}", quiz_question: @invalid_attrs)
      assert html_response(conn, 200) =~ "Edit Quiz question"
    end
  end

  describe "delete quiz_question" do
    setup [:create_quiz_question]

    test "deletes chosen quiz_question", %{conn: conn, quiz_question: quiz_question} do
      conn = delete(conn, ~p"/quiz_questions/#{quiz_question}")
      assert redirected_to(conn) == ~p"/quiz_questions"

      assert_error_sent 404, fn ->
        get(conn, ~p"/quiz_questions/#{quiz_question}")
      end
    end
  end

  defp create_quiz_question(_) do
    quiz_question = quiz_question_fixture()
    %{quiz_question: quiz_question}
  end
end
