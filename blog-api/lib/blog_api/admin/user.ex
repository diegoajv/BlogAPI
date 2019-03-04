defmodule BlogApi.Admin.User do
  use Ecto.Schema
  import Ecto.Changeset

  alias BlogApi.Blog

  schema "users" do
    field :email, :string
    field :name, :string
    field :subscription, :string
    has_many :posts, Blog.Post

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :email])
    |> validate_required([:name, :email])
  end
end
