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
end
