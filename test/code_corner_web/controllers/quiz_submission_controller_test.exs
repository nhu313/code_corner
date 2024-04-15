defmodule CodeCornerWeb.QuizSubmissionControllerTest do
  use CodeCornerWeb.ConnCase

  import CodeCorner.ClassFixtures

  @create_attrs %{quiz_id: 42, question_id: 42, student_id: 42, answer: "some answer", correct: true}
  @update_attrs %{quiz_id: 43, question_id: 43, student_id: 43, answer: "some updated answer", correct: false}
  @invalid_attrs %{quiz_id: nil, question_id: nil, student_id: nil, answer: nil, correct: nil}

  describe "index" do
    test "lists all quiz_submissions", %{conn: conn} do
      conn = get(conn, ~p"/quiz_submissions")
      assert html_response(conn, 200) =~ "Listing Quiz submissions"
    end
  end

  describe "new quiz_submission" do
    test "renders form", %{conn: conn} do
      conn = get(conn, ~p"/quiz_submissions/new")
      assert html_response(conn, 200) =~ "New Quiz submission"
    end
  end

  describe "create quiz_submission" do
    test "redirects to show when data is valid", %{conn: conn} do
      conn = post(conn, ~p"/quiz_submissions", quiz_submission: @create_attrs)

      assert %{id: id} = redirected_params(conn)
      assert redirected_to(conn) == ~p"/quiz_submissions/#{id}"

      conn = get(conn, ~p"/quiz_submissions/#{id}")
      assert html_response(conn, 200) =~ "Quiz submission #{id}"
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, ~p"/quiz_submissions", quiz_submission: @invalid_attrs)
      assert html_response(conn, 200) =~ "New Quiz submission"
    end
  end

  describe "edit quiz_submission" do
    setup [:create_quiz_submission]

    test "renders form for editing chosen quiz_submission", %{conn: conn, quiz_submission: quiz_submission} do
      conn = get(conn, ~p"/quiz_submissions/#{quiz_submission}/edit")
      assert html_response(conn, 200) =~ "Edit Quiz submission"
    end
  end

  describe "update quiz_submission" do
    setup [:create_quiz_submission]

    test "redirects when data is valid", %{conn: conn, quiz_submission: quiz_submission} do
      conn = put(conn, ~p"/quiz_submissions/#{quiz_submission}", quiz_submission: @update_attrs)
      assert redirected_to(conn) == ~p"/quiz_submissions/#{quiz_submission}"

      conn = get(conn, ~p"/quiz_submissions/#{quiz_submission}")
      assert html_response(conn, 200) =~ "some updated answer"
    end

    test "renders errors when data is invalid", %{conn: conn, quiz_submission: quiz_submission} do
      conn = put(conn, ~p"/quiz_submissions/#{quiz_submission}", quiz_submission: @invalid_attrs)
      assert html_response(conn, 200) =~ "Edit Quiz submission"
    end
  end

  describe "delete quiz_submission" do
    setup [:create_quiz_submission]

    test "deletes chosen quiz_submission", %{conn: conn, quiz_submission: quiz_submission} do
      conn = delete(conn, ~p"/quiz_submissions/#{quiz_submission}")
      assert redirected_to(conn) == ~p"/quiz_submissions"

      assert_error_sent 404, fn ->
        get(conn, ~p"/quiz_submissions/#{quiz_submission}")
      end
    end
  end

  defp create_quiz_submission(_) do
    quiz_submission = quiz_submission_fixture()
    %{quiz_submission: quiz_submission}
  end
end
