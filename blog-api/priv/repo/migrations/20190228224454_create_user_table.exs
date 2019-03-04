defmodule BlogApi.Repo.Migrations.CreateUserTable do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :email, :string
      add :subscription, :string

      timestamps()
    end

  end
end
