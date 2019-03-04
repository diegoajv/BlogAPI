defmodule BlogApiWeb.Resolvers.PostResolver do
  alias BlogApi.Blog

  def list_posts(_args, filter, _info) do
    {:ok, Blog.list_posts(filter)}
  end
end
