defmodule Ectobug.Repo.Migrations.CreateTarget do
  use Ecto.Migration

  def change do
    create table(:targets, primary_key: false) do
      add :uid, :string, primary_key: true

      timestamps()
    end

  end
end
