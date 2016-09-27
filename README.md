# Ectobug

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`

```
%Ectobug.User{} |> Ectobug.User.changeset |> Ectobug.Repo.insert!
%Ectobug.Target{uid: "foo"} |> Ectobug.Target.changeset |> Ectobug.Repo.insert!
%Ectobug.UserFollow{user_uid: 1, target_uid: "foo"} |> Ectobug.UserFollow.changeset |> Ectobug.Repo.insert!
Ectobug.Repo.get(Ectobug.User, 1) |> Ectobug.Repo.preload(:followed)
```
