defmodule SampleCassandra.PageController do
  use SampleCassandra.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
