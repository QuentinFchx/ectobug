defmodule Ectobug.UserFollow do
  use Ectobug.Web, :model

  schema "user_follows" do
    belongs_to :user, Ectobug.User, foreign_key: :user_uid
    belongs_to :target, Ectobug.Target, foreign_key: :target_uid, references: :uid, type: :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [])
    |> validate_required([])
  end
end
