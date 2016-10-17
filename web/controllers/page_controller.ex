defmodule Anykine.PageController do
  use Anykine.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
