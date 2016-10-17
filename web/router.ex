defmodule Anykine.Router do
  use Anykine.Web, :router

  get "/graphiql", Absinthe.Plug.GraphiQL, schema: Anykine.Schema

  forward "/", Absinthe.Plug,
    schema: Anykine.Schema
end
