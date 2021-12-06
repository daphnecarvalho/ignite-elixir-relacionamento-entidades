defmodule Exmeal.Meals.Get do
  alias Exmeal.{Error, Repo, Meal}

  def by_id(id) do
    case Repo.get(Meal, id) do
      nil -> {:error, Error.build_meal_not_found_error()}
      meal -> {:ok, meal}
    end
  end

  def all() do
    meals =
      Repo.all(Meal)
      |> get_all_meals(%{})

    {:ok, meals}
  end

  defp get_all_meals([%Meal{id: id} = meal | tail], acc) do
    acc = Map.put_new(acc, id, meal)

    get_all_meals(tail, acc)
  end

  defp get_all_meals([], acc), do: acc
end
