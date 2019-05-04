defmodule SquizzyWeb.AuthTest do
  use SquizzyWeb.ConnCase
  alias SquizzyWeb.Auth

  setup %{conn: conn} do
    conn =
      conn
      |> bypass_through(SquizzyWeb.Router, :browser)
      |> get("/")

    {:ok, %{conn: conn}}
  end

  test "authenticate_user halts when no current_user exists",
       %{conn: conn} do
    conn = Auth.authenticate_user(conn, [])
    assert conn.halted
  end

  test "authenticate_user continues when the current user exists",
       %{conn: conn} do
    conn =
      conn
      |> assign(:current_user, %Squizzy.Accounts.User{})
      |> Auth.authenticate_user([])

    refute conn.halted
  end
end
