defmodule BlogApiWeb.Resolvers.UserResolver do
  alias BlogApi.Admin

  def list_users(_args, filter, _info) do
    {:ok, Admin.list_users(filter)}
  end

  def find_user(_args, %{id: id}, _resolution) do
    case Admin.get_user!(id) do
      nil ->
        {:error, "User ID #{id} not found"}
      user ->
        {:ok, user}
    end
  end
end
