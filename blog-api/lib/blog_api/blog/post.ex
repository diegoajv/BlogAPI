defmodule BlogApi.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset

  alias BlogApi.Admin

  schema "posts" do
    field :title, :string
    field :body, :string
    field :details, :map
    belongs_to :user, Admin.User

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :body, :details, :user_id])
    |> validate_required([:title, :body, :user_id])
  end
end
