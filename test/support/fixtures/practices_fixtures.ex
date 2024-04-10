defmodule CodeCorner.PracticesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `CodeCorner.Practices` context.
  """

  @doc """
  Generate a submission.
  """
  def submission_fixture(attrs \\ %{}) do
    {:ok, submission} =
      attrs
      |> Enum.into(%{
        input: "some input",
        practice_id: 42,
        user_id: 42
      })
      |> CodeCorner.Practices.create_submission()

    submission
  end

  @doc """
  Generate a problem.
  """
  def problem_fixture(attrs \\ %{}) do
    {:ok, problem} =
      attrs
      |> Enum.into(%{
        answer: "some answer",
        description: "some description",
        lesson_id: 42
      })
      |> CodeCorner.Practices.create_problem()

    problem
  end
end
