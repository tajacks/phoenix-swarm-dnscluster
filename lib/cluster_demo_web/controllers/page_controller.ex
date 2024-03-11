defmodule ClusterDemoWeb.PageController do
  use ClusterDemoWeb, :controller

  def home(conn, _params) do
    render(conn, :home, self: Node.self(), nodes: Node.list())
  end
end
