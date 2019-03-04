defmodule BlogApi.Admin do
  import Ecto.Query, warn: false
  alias BlogApi.Repo

  alias BlogApi.Admin.User

  def list_users(filter) do
    filter
    |> Enum.reduce(User, fn
        {:filter, filter}, entity ->
          entity
          |> filter_with(filter)
      end)
    |> Repo.all
  end

  def get_user!(id) do
    Repo.get!(User, id)
  end

  def filter_with(entity, filter) do
    filter
    |> Enum.reduce(entity, fn 
      {:subscription, subscription}, entity ->
        from e in entity, where: ilike(e.subscription, ^"%#{subscription}%")
    end)
  end
end
