defmodule Ectobug.User do
  use Ectobug.Web, :model

  schema "users" do
    has_many :user_follows, Ectobug.UserFollow, foreign_key: :user_uid
    has_many :followed, through: [:user_follows, :target]

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
