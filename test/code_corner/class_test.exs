defmodule CodeCorner.ClassTest do
  use CodeCorner.DataCase

  alias CodeCorner.Class

  describe "lessons" do
    alias CodeCorner.Class.Lesson

    import CodeCorner.ClassFixtures

    @invalid_attrs %{name: nil, order: nil, view: nil}

    test "list_lessons/0 returns all lessons" do
      lesson = lesson_fixture()
      assert Class.list_lessons() == [lesson]
    end

    test "get_lesson!/1 returns the lesson with given id" do
      lesson = lesson_fixture()
      assert Class.get_lesson!(lesson.id) == lesson
    end

    test "create_lesson/1 with valid data creates a lesson" do
      valid_attrs = %{name: "some name", order: 42, view: "some view"}

      assert {:ok, %Lesson{} = lesson} = Class.create_lesson(valid_attrs)
      assert lesson.name == "some name"
      assert lesson.order == 42
      assert lesson.view == "some view"
    end

    test "create_lesson/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Class.create_lesson(@invalid_attrs)
    end

    test "update_lesson/2 with valid data updates the lesson" do
      lesson = lesson_fixture()
      update_attrs = %{name: "some updated name", order: 43, view: "some updated view"}

      assert {:ok, %Lesson{} = lesson} = Class.update_lesson(lesson, update_attrs)
      assert lesson.name == "some updated name"
      assert lesson.order == 43
      assert lesson.view == "some updated view"
    end

    test "update_lesson/2 with invalid data returns error changeset" do
      lesson = lesson_fixture()
      assert {:error, %Ecto.Changeset{}} = Class.update_lesson(lesson, @invalid_attrs)
      assert lesson == Class.get_lesson!(lesson.id)
    end

    test "delete_lesson/1 deletes the lesson" do
      lesson = lesson_fixture()
      assert {:ok, %Lesson{}} = Class.delete_lesson(lesson)
      assert_raise Ecto.NoResultsError, fn -> Class.get_lesson!(lesson.id) end
    end

    test "change_lesson/1 returns a lesson changeset" do
      lesson = lesson_fixture()
      assert %Ecto.Changeset{} = Class.change_lesson(lesson)
    end
  end

  describe "quizzes" do
    alias CodeCorner.Class.Quiz

    import CodeCorner.ClassFixtures

    @invalid_attrs %{name: nil, lesson_id: nil, order_id: nil, answer: nil}

    test "list_quizzes/0 returns all quizzes" do
      quiz = quiz_fixture()
      assert Class.list_quizzes() == [quiz]
    end

    test "get_quiz!/1 returns the quiz with given id" do
      quiz = quiz_fixture()
      assert Class.get_quiz!(quiz.id) == quiz
    end

    test "create_quiz/1 with valid data creates a quiz" do
      valid_attrs = %{name: "some name", lesson_id: 42, order_id: 42, answer: "some answer"}

      assert {:ok, %Quiz{} = quiz} = Class.create_quiz(valid_attrs)
      assert quiz.name == "some name"
      assert quiz.lesson_id == 42
      assert quiz.order_id == 42
      assert quiz.answer == "some answer"
    end

    test "create_quiz/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Class.create_quiz(@invalid_attrs)
    end

    test "update_quiz/2 with valid data updates the quiz" do
      quiz = quiz_fixture()
      update_attrs = %{name: "some updated name", lesson_id: 43, order_id: 43, answer: "some updated answer"}

      assert {:ok, %Quiz{} = quiz} = Class.update_quiz(quiz, update_attrs)
      assert quiz.name == "some updated name"
      assert quiz.lesson_id == 43
      assert quiz.order_id == 43
      assert quiz.answer == "some updated answer"
    end

    test "update_quiz/2 with invalid data returns error changeset" do
      quiz = quiz_fixture()
      assert {:error, %Ecto.Changeset{}} = Class.update_quiz(quiz, @invalid_attrs)
      assert quiz == Class.get_quiz!(quiz.id)
    end

    test "delete_quiz/1 deletes the quiz" do
      quiz = quiz_fixture()
      assert {:ok, %Quiz{}} = Class.delete_quiz(quiz)
      assert_raise Ecto.NoResultsError, fn -> Class.get_quiz!(quiz.id) end
    end

    test "change_quiz/1 returns a quiz changeset" do
      quiz = quiz_fixture()
      assert %Ecto.Changeset{} = Class.change_quiz(quiz)
    end
  end

  describe "quiz_results" do
    alias CodeCorner.Class.QuizResult

    import CodeCorner.ClassFixtures

    @invalid_attrs %{success: nil, errors: nil, quiz_id: nil, student_id: nil, submission: nil}

    test "list_quiz_results/0 returns all quiz_results" do
      quiz_result = quiz_result_fixture()
      assert Class.list_quiz_results() == [quiz_result]
    end

    test "get_quiz_result!/1 returns the quiz_result with given id" do
      quiz_result = quiz_result_fixture()
      assert Class.get_quiz_result!(quiz_result.id) == quiz_result
    end

    test "create_quiz_result/1 with valid data creates a quiz_result" do
      valid_attrs = %{success: true, errors: "some errors", quiz_id: 42, student_id: 42, submission: "some submission"}

      assert {:ok, %QuizResult{} = quiz_result} = Class.create_quiz_result(valid_attrs)
      assert quiz_result.success == true
      assert quiz_result.errors == "some errors"
      assert quiz_result.quiz_id == 42
      assert quiz_result.student_id == 42
      assert quiz_result.submission == "some submission"
    end

    test "create_quiz_result/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Class.create_quiz_result(@invalid_attrs)
    end

    test "update_quiz_result/2 with valid data updates the quiz_result" do
      quiz_result = quiz_result_fixture()
      update_attrs = %{success: false, errors: "some updated errors", quiz_id: 43, student_id: 43, submission: "some updated submission"}

      assert {:ok, %QuizResult{} = quiz_result} = Class.update_quiz_result(quiz_result, update_attrs)
      assert quiz_result.success == false
      assert quiz_result.errors == "some updated errors"
      assert quiz_result.quiz_id == 43
      assert quiz_result.student_id == 43
      assert quiz_result.submission == "some updated submission"
    end

    test "update_quiz_result/2 with invalid data returns error changeset" do
      quiz_result = quiz_result_fixture()
      assert {:error, %Ecto.Changeset{}} = Class.update_quiz_result(quiz_result, @invalid_attrs)
      assert quiz_result == Class.get_quiz_result!(quiz_result.id)
    end

    test "delete_quiz_result/1 deletes the quiz_result" do
      quiz_result = quiz_result_fixture()
      assert {:ok, %QuizResult{}} = Class.delete_quiz_result(quiz_result)
      assert_raise Ecto.NoResultsError, fn -> Class.get_quiz_result!(quiz_result.id) end
    end

    test "change_quiz_result/1 returns a quiz_result changeset" do
      quiz_result = quiz_result_fixture()
      assert %Ecto.Changeset{} = Class.change_quiz_result(quiz_result)
    end
  end
end
