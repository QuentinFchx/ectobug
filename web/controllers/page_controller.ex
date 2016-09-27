defmodule Ectobug.PageController do
  use Ectobug.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
