defmodule ExmealWeb.UsersController do
  use ExmealWeb, :controller

  alias Exmeal.User
  alias ExmealWeb.FallbackController

  action_fallback FallbackController

  def create(connection, params) do
    with {:ok, %User{} = user} <- Exmeal.create_user(params) do
      connection
      |> put_status(:created)
      |> render("create.json", user: user)
    end
  end

  def delete(connection, %{"id" => id}) do
    with {:ok, %User{}} <- Exmeal.delete_user(id) do
      connection
      |> put_status(:no_content)
      |> text("")
    end
  end

  def index(connection, _params) do
    with {:ok, users} <- Exmeal.get_all_users() do
      connection
      |> put_status(:ok)
      |> render("index.json", users: users)
    end
  end

  def show(connection, %{"id" => id}) do
    with {:ok, %User{} = user} <- Exmeal.get_user_by_id(id) do
      connection
      |> put_status(:ok)
      |> render("user.json", user: user)
    end
  end

  def update(connection, params) do
    with {:ok, %User{} = user} <- Exmeal.update_user(params) do
      connection
      |> put_status(:ok)
      |> render("user.json", user: user)
    end
  end
end
