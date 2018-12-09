defmodule SquizzyWeb.UserController do
  use SquizzyWeb, :controller
  
  alias Squizzy.Accounts

  def index(conn, _params) do
    users = Accounts.list_users()
    render(conn, "index.html", users: users)
  end
end
