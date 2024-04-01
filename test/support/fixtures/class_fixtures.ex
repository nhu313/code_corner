defmodule CodeCorner.ClassFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `CodeCorner.Class` context.
  """

  @doc """
  Generate a lesson.
  """
  def lesson_fixture(attrs \\ %{}) do
    {:ok, lesson} =
      attrs
      |> Enum.into(%{
        name: "some name",
        order: 42,
        view: "some view"
      })
      |> CodeCorner.Class.create_lesson()

    lesson
  end

  @doc """
  Generate a quiz.
  """
  def quiz_fixture(attrs \\ %{}) do
    {:ok, quiz} =
      attrs
      |> Enum.into(%{
        answer: "some answer",
        lesson_id: 42,
        name: "some name",
        order_id: 42
      })
      |> CodeCorner.Class.create_quiz()

    quiz
  end

  @doc """
  Generate a quiz_result.
  """
  def quiz_result_fixture(attrs \\ %{}) do
    {:ok, quiz_result} =
      attrs
      |> Enum.into(%{
        errors: "some errors",
        quiz_id: 42,
        student_id: 42,
        submission: "some submission",
        success: true
      })
      |> CodeCorner.Class.create_quiz_result()

    quiz_result
  end
end
