defmodule Anykine.Router do
  use Anykine.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  get "/graphiql", Absinthe.Plug.GraphiQL, schema: Anykine.Schema
  post "/graphiql", Absinthe.Plug.GraphiQL, schema: Anykine.Schema

  forward "/graphql", Absinthe.Plug,
  schema: Anykine.Schema

  scope "/" , Anykine do
    pipe_through :browser

    get "/", PageController, :index
  end
end
