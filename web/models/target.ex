defmodule Ectobug.Target do
  use Ectobug.Web, :model

  @primary_key {:uid, :string, []}
  schema "targets" do
    has_many :user_follows, Ectobug.UserFollow, foreign_key: :target_uid
    has_many :followers, through: [:user_follows, :user]

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:uid])
    |> validate_required([:uid])
  end
end
