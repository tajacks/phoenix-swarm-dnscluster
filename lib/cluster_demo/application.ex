defmodule ClusterDemo.Application do
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      {DNSCluster, query: "tasks.cluster_demo"},
      {Phoenix.PubSub, name: ClusterDemo.PubSub},
      ClusterDemoWeb.Endpoint
    ]

    opts = [strategy: :one_for_one, name: ClusterDemo.Supervisor]
    Supervisor.start_link(children, opts)
  end

  @impl true
  def config_change(changed, _new, removed) do
    ClusterDemoWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
