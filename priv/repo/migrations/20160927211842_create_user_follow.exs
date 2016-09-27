defmodule Ectobug.Repo.Migrations.CreateUserFollow do
  use Ecto.Migration

  def change do
    create table(:user_follows) do
      add :user_uid, references(:users, on_delete: :nothing), null: false
      add :target_uid, references(:targets, column: :uid, type: :string, on_delete: :nothing), null: false

      timestamps()
    end
    create index(:user_follows, [:user_uid])
    create index(:user_follows, [:target_uid])

  end
end
