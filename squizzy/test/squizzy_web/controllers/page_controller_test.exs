defmodule SquizzyWeb.PageControllerTest do
  use SquizzyWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Welcome to Squizzy!"
  end
end
