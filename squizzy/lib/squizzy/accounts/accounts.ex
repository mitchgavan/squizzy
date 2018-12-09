defmodule Squizzy.Accounts do
  @moduledoc """
  The Accounts context.
  """

  alias Squizzy.Accounts.User

  def list_users do
    [
      %User{id: "1", name: "Michael", username: "michaeljordan"},
      %User{id: "2", name: "Kobe", username: "kobebryant"},
      %User{id: "3", name: "Lebron", username: "lebronjames"}
    ]
  end

  def get_user(id) do
    Enum.find(list_users(), fn map -> map.id == id end)
  end

  def get_user_by(params) do
    Enum.find(list_users(),
      fn map -> Enum.all?(params,
        fn {key, val} -> Map.get(map, key) == val end)
      end)
  end
end