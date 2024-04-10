defmodule CodeCorner.PracticesTest do
  use CodeCorner.DataCase

  alias CodeCorner.Practices

  describe "submissions" do
    alias CodeCorner.Practices.Submission

    import CodeCorner.PracticesFixtures

    @invalid_attrs %{input: nil, user_id: nil, practice_id: nil}

    test "list_submissions/0 returns all submissions" do
      submission = submission_fixture()
      assert Practices.list_submissions() == [submission]
    end

    test "get_submission!/1 returns the submission with given id" do
      submission = submission_fixture()
      assert Practices.get_submission!(submission.id) == submission
    end

    test "create_submission/1 with valid data creates a submission" do
      valid_attrs = %{input: "some input", user_id: 42, practice_id: 42}

      assert {:ok, %Submission{} = submission} = Practices.create_submission(valid_attrs)
      assert submission.input == "some input"
      assert submission.user_id == 42
      assert submission.practice_id == 42
    end

    test "create_submission/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Practices.create_submission(@invalid_attrs)
    end

    test "update_submission/2 with valid data updates the submission" do
      submission = submission_fixture()
      update_attrs = %{input: "some updated input", user_id: 43, practice_id: 43}

      assert {:ok, %Submission{} = submission} = Practices.update_submission(submission, update_attrs)
      assert submission.input == "some updated input"
      assert submission.user_id == 43
      assert submission.practice_id == 43
    end

    test "update_submission/2 with invalid data returns error changeset" do
      submission = submission_fixture()
      assert {:error, %Ecto.Changeset{}} = Practices.update_submission(submission, @invalid_attrs)
      assert submission == Practices.get_submission!(submission.id)
    end

    test "delete_submission/1 deletes the submission" do
      submission = submission_fixture()
      assert {:ok, %Submission{}} = Practices.delete_submission(submission)
      assert_raise Ecto.NoResultsError, fn -> Practices.get_submission!(submission.id) end
    end

    test "change_submission/1 returns a submission changeset" do
      submission = submission_fixture()
      assert %Ecto.Changeset{} = Practices.change_submission(submission)
    end
  end
end
