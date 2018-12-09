defmodule SquizzyWeb.UserView do
  use SquizzyWeb, :view

  alias Squizzy.Accounts

  def first_name(%Accounts.User{name: name}) do
    name
    |> String.split(" ")
    |>Enum.at(0)
  end
end