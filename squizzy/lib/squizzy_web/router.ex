defmodule SquizzyWeb.Router do
  use SquizzyWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug SquizzyWeb.Auth
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", SquizzyWeb do
    pipe_through :browser

    get "/", PageController, :index
    resources "/users", UserController, only: [:index, :show, :new, :create]
    resources "/sessions", SessionController, only: [:new, :create, :delete]
  end

  # Other scopes may use custom stacks.
  # scope "/api", SquizzyWeb do
  #   pipe_through :api
  # end
end
