defmodule Ectobug.TargetTest do
  use Ectobug.ModelCase

  alias Ectobug.Target

  @valid_attrs %{uid: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Target.changeset(%Target{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Target.changeset(%Target{}, @invalid_attrs)
    refute changeset.valid?
  end
end
