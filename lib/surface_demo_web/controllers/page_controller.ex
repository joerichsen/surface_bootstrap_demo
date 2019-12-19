defmodule SurfaceDemoWeb.PageController do
  use SurfaceDemoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
