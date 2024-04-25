defmodule CodeCorner.LessonQuery do
  @moduledoc """
  The Class context.
  """

  import Ecto.Query, warn: false
  alias CodeCorner.Repo

  alias CodeCorner.Class.Lesson
  alias CodeCorner.Practices.Problem
  alias CodeCorner.Practices.Submission
  alias CodeCorner.Class.QuizSubmission
  alias CodeCorner.Class.Quiz

  def fetch_user_submissions(user_id) do
    fetch_user_lesson_status(user_id) ++ fetch_user_quiz_submissions(user_id)
  end

  def fetch_user_quiz_submissions(user_id) do
    query = from quiz in Quiz,
            join: s in QuizSubmission, on: quiz.id == s.quiz_id and s.student_id == ^user_id,
            select: quiz.slug,
            distinct: quiz.slug

    Repo.all(query)
  end

  def fetch_user_lesson_status(user_id) do
    query = from lesson in Lesson,
            join: p in Problem, on: lesson.id == p.lesson_id,
            join: s in Submission, on: p.id == s.problem_id and s.user_id == ^user_id,
            select: lesson.slug,
            distinct: lesson.slug

    Repo.all(query)
  end
end
