defmodule BlogApi.Blog do
  import Ecto.Query, warn: false
  alias BlogApi.Repo

  alias BlogApi.Blog.Post

  def list_posts(filter) do
    filter
    |> Enum.reduce(Post, fn
        {:filter, filter}, entity ->
          entity
          |> filter_with(filter)
      end)
    |> Repo.all
  end

  def filter_with(entity, filter) do
    filter
    |> Enum.reduce(entity, fn 
      {:site, site}, entity ->
        from e in entity, where:
          fragment("?->>? ILIKE ?", e.details, "site", ^site)
      {:section, section}, entity ->
        from e in entity, where: 
          fragment("?->>? ILIKE ?", e.details, "section", ^section)
      {:topic, topic}, entity ->
        from e in entity, where: 
          fragment("?->>? ILIKE ?", e.details, "topic", ^topic)
      end)
  end
end
