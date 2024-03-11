defmodule CodeCorner.Logs do
  @moduledoc """
  The Logs context.
  """

  import Ecto.Query, warn: false
  alias CodeCorner.Repo

  alias CodeCorner.Logs.RequestLog

  @doc """
  Returns the list of request_logs.

  ## Examples

      iex> list_request_logs()
      [%RequestLog{}, ...]

  """
  def list_request_logs do
    Repo.all(RequestLog)
  end

  @doc """
  Gets a single request_log.

  Raises `Ecto.NoResultsError` if the Request log does not exist.

  ## Examples

      iex> get_request_log!(123)
      %RequestLog{}

      iex> get_request_log!(456)
      ** (Ecto.NoResultsError)

  """
  def get_request_log!(id), do: Repo.get!(RequestLog, id)

  def request_logs_by_user(user_id) do
    query = from r in RequestLog,
            where: r.user_id == ^user_id

    Repo.all(query)
  end

  @doc """
  Creates a request_log.

  ## Examples

      iex> create_request_log(%{field: value})
      {:ok, %RequestLog{}}

      iex> create_request_log(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_request_log(attrs \\ %{}) do
    %RequestLog{}
    |> RequestLog.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a request_log.

  ## Examples

      iex> update_request_log(request_log, %{field: new_value})
      {:ok, %RequestLog{}}

      iex> update_request_log(request_log, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_request_log(%RequestLog{} = request_log, attrs) do
    request_log
    |> RequestLog.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a request_log.

  ## Examples

      iex> delete_request_log(request_log)
      {:ok, %RequestLog{}}

      iex> delete_request_log(request_log)
      {:error, %Ecto.Changeset{}}

  """
  def delete_request_log(%RequestLog{} = request_log) do
    Repo.delete(request_log)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking request_log changes.

  ## Examples

      iex> change_request_log(request_log)
      %Ecto.Changeset{data: %RequestLog{}}

  """
  def change_request_log(%RequestLog{} = request_log, attrs \\ %{}) do
    RequestLog.changeset(request_log, attrs)
  end
end
