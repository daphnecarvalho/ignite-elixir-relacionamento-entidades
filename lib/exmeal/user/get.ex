defmodule Exmeal.Users.Get do
  alias Exmeal.{Error, Repo, User}

  def by_id(id) do
    case Repo.get(User, id) do
      nil -> {:error, Error.build_user_not_found_error()}
      user -> {:ok, user}
    end
  end

  def all() do
    users =
      Repo.all(User)
      |> get_all_users(%{})

    {:ok, users}
  end

  defp get_all_users([%User{id: id} = user | tail], acc) do
    acc = Map.put_new(acc, id, user)

    get_all_users(tail, acc)
  end

  defp get_all_users([], acc), do: acc
end
