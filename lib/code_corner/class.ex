defmodule CodeCorner.Class do
  @moduledoc """
  The Class context.
  """

  import Ecto.Query, warn: false
  alias CodeCorner.Repo

  alias CodeCorner.Class.Lesson

  @doc """
  Returns the list of lessons.

  ## Examples

      iex> list_lessons()
      [%Lesson{}, ...]

  """
  def list_lessons do
    Repo.all(Lesson)
  end

  @doc """
  Gets a single lesson.

  Raises `Ecto.NoResultsError` if the Lesson does not exist.

  ## Examples

      iex> get_lesson!(123)
      %Lesson{}

      iex> get_lesson!(456)
      ** (Ecto.NoResultsError)

  """
  def get_lesson!(id), do: Repo.get!(Lesson, id)

  @doc """
  Creates a lesson.

  ## Examples

      iex> create_lesson(%{field: value})
      {:ok, %Lesson{}}

      iex> create_lesson(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_lesson(attrs \\ %{}) do
    %Lesson{}
    |> Lesson.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a lesson.

  ## Examples

      iex> update_lesson(lesson, %{field: new_value})
      {:ok, %Lesson{}}

      iex> update_lesson(lesson, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_lesson(%Lesson{} = lesson, attrs) do
    lesson
    |> Lesson.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a lesson.

  ## Examples

      iex> delete_lesson(lesson)
      {:ok, %Lesson{}}

      iex> delete_lesson(lesson)
      {:error, %Ecto.Changeset{}}

  """
  def delete_lesson(%Lesson{} = lesson) do
    Repo.delete(lesson)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking lesson changes.

  ## Examples

      iex> change_lesson(lesson)
      %Ecto.Changeset{data: %Lesson{}}

  """
  def change_lesson(%Lesson{} = lesson, attrs \\ %{}) do
    Lesson.changeset(lesson, attrs)
  end

  alias CodeCorner.Class.Quiz

  @doc """
  Returns the list of quizzes.

  ## Examples

      iex> list_quizzes()
      [%Quiz{}, ...]

  """
  def list_quizzes do
    Repo.all(Quiz)
  end

  @doc """
  Gets a single quiz.

  Raises `Ecto.NoResultsError` if the Quiz does not exist.

  ## Examples

      iex> get_quiz!(123)
      %Quiz{}

      iex> get_quiz!(456)
      ** (Ecto.NoResultsError)

  """
  def get_quiz!(id), do: Repo.get!(Quiz, id)

  @doc """
  Creates a quiz.

  ## Examples

      iex> create_quiz(%{field: value})
      {:ok, %Quiz{}}

      iex> create_quiz(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_quiz(attrs \\ %{}) do
    %Quiz{}
    |> Quiz.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a quiz.

  ## Examples

      iex> update_quiz(quiz, %{field: new_value})
      {:ok, %Quiz{}}

      iex> update_quiz(quiz, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_quiz(%Quiz{} = quiz, attrs) do
    quiz
    |> Quiz.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a quiz.

  ## Examples

      iex> delete_quiz(quiz)
      {:ok, %Quiz{}}

      iex> delete_quiz(quiz)
      {:error, %Ecto.Changeset{}}

  """
  def delete_quiz(%Quiz{} = quiz) do
    Repo.delete(quiz)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking quiz changes.

  ## Examples

      iex> change_quiz(quiz)
      %Ecto.Changeset{data: %Quiz{}}

  """
  def change_quiz(%Quiz{} = quiz, attrs \\ %{}) do
    Quiz.changeset(quiz, attrs)
  end

  alias CodeCorner.Class.QuizResult

  @doc """
  Returns the list of quiz_results.

  ## Examples

      iex> list_quiz_results()
      [%QuizResult{}, ...]

  """
  def list_quiz_results do
    Repo.all(QuizResult)
  end

  @doc """
  Gets a single quiz_result.

  Raises `Ecto.NoResultsError` if the Quiz result does not exist.

  ## Examples

      iex> get_quiz_result!(123)
      %QuizResult{}

      iex> get_quiz_result!(456)
      ** (Ecto.NoResultsError)

  """
  def get_quiz_result!(id), do: Repo.get!(QuizResult, id)

  @doc """
  Creates a quiz_result.

  ## Examples

      iex> create_quiz_result(%{field: value})
      {:ok, %QuizResult{}}

      iex> create_quiz_result(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_quiz_result(attrs \\ %{}) do
    %QuizResult{}
    |> QuizResult.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a quiz_result.

  ## Examples

      iex> update_quiz_result(quiz_result, %{field: new_value})
      {:ok, %QuizResult{}}

      iex> update_quiz_result(quiz_result, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_quiz_result(%QuizResult{} = quiz_result, attrs) do
    quiz_result
    |> QuizResult.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a quiz_result.

  ## Examples

      iex> delete_quiz_result(quiz_result)
      {:ok, %QuizResult{}}

      iex> delete_quiz_result(quiz_result)
      {:error, %Ecto.Changeset{}}

  """
  def delete_quiz_result(%QuizResult{} = quiz_result) do
    Repo.delete(quiz_result)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking quiz_result changes.

  ## Examples

      iex> change_quiz_result(quiz_result)
      %Ecto.Changeset{data: %QuizResult{}}

  """
  def change_quiz_result(%QuizResult{} = quiz_result, attrs \\ %{}) do
    QuizResult.changeset(quiz_result, attrs)
  end

  alias CodeCorner.Class.QuizQuestion

  @doc """
  Returns the list of quiz_questions.

  ## Examples

      iex> list_quiz_questions()
      [%QuizQuestion{}, ...]

  """
  def list_quiz_questions do
    Repo.all(QuizQuestion)
  end

  @doc """
  Gets a single quiz_question.

  Raises `Ecto.NoResultsError` if the Quiz question does not exist.

  ## Examples

      iex> get_quiz_question!(123)
      %QuizQuestion{}

      iex> get_quiz_question!(456)
      ** (Ecto.NoResultsError)

  """
  def get_quiz_question!(id), do: Repo.get!(QuizQuestion, id)

  @doc """
  Creates a quiz_question.

  ## Examples

      iex> create_quiz_question(%{field: value})
      {:ok, %QuizQuestion{}}

      iex> create_quiz_question(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_quiz_question(attrs \\ %{}) do
    %QuizQuestion{}
    |> QuizQuestion.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a quiz_question.

  ## Examples

      iex> update_quiz_question(quiz_question, %{field: new_value})
      {:ok, %QuizQuestion{}}

      iex> update_quiz_question(quiz_question, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_quiz_question(%QuizQuestion{} = quiz_question, attrs) do
    quiz_question
    |> QuizQuestion.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a quiz_question.

  ## Examples

      iex> delete_quiz_question(quiz_question)
      {:ok, %QuizQuestion{}}

      iex> delete_quiz_question(quiz_question)
      {:error, %Ecto.Changeset{}}

  """
  def delete_quiz_question(%QuizQuestion{} = quiz_question) do
    Repo.delete(quiz_question)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking quiz_question changes.

  ## Examples

      iex> change_quiz_question(quiz_question)
      %Ecto.Changeset{data: %QuizQuestion{}}

  """
  def change_quiz_question(%QuizQuestion{} = quiz_question, attrs \\ %{}) do
    QuizQuestion.changeset(quiz_question, attrs)
  end

  alias CodeCorner.Class.QuizSubmission

  @doc """
  Returns the list of quiz_submissions.

  ## Examples

      iex> list_quiz_submissions()
      [%QuizSubmission{}, ...]

  """
  def list_quiz_submissions do
    Repo.all(QuizSubmission)
  end

  @doc """
  Gets a single quiz_submission.

  Raises `Ecto.NoResultsError` if the Quiz submission does not exist.

  ## Examples

      iex> get_quiz_submission!(123)
      %QuizSubmission{}

      iex> get_quiz_submission!(456)
      ** (Ecto.NoResultsError)

  """
  def get_quiz_submission!(id), do: Repo.get!(QuizSubmission, id)

  @doc """
  Creates a quiz_submission.

  ## Examples

      iex> create_quiz_submission(%{field: value})
      {:ok, %QuizSubmission{}}

      iex> create_quiz_submission(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_quiz_submission(attrs \\ %{}) do
    %QuizSubmission{}
    |> QuizSubmission.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a quiz_submission.

  ## Examples

      iex> update_quiz_submission(quiz_submission, %{field: new_value})
      {:ok, %QuizSubmission{}}

      iex> update_quiz_submission(quiz_submission, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_quiz_submission(%QuizSubmission{} = quiz_submission, attrs) do
    quiz_submission
    |> QuizSubmission.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a quiz_submission.

  ## Examples

      iex> delete_quiz_submission(quiz_submission)
      {:ok, %QuizSubmission{}}

      iex> delete_quiz_submission(quiz_submission)
      {:error, %Ecto.Changeset{}}

  """
  def delete_quiz_submission(%QuizSubmission{} = quiz_submission) do
    Repo.delete(quiz_submission)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking quiz_submission changes.

  ## Examples

      iex> change_quiz_submission(quiz_submission)
      %Ecto.Changeset{data: %QuizSubmission{}}

  """
  def change_quiz_submission(%QuizSubmission{} = quiz_submission, attrs \\ %{}) do
    QuizSubmission.changeset(quiz_submission, attrs)
  end
end
