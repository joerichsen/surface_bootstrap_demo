defmodule SurfaceDemoWeb.Router do
  use SurfaceDemoWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug Phoenix.LiveView.Flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", SurfaceDemoWeb do
    pipe_through :browser

    live "/", AlertsLive
    live "/alerts", AlertsLive
    live "/buttons", ButtonsLive
    live "/cards", CardsLive
    live "/navbar", NavbarLive
    live "/spinners", SpinnersLive
    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", SurfaceDemoWeb do
  #   pipe_through :api
  # end
end
