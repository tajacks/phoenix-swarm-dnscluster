import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :cluster_demo, ClusterDemoWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "H0jyvU3PQx+1bj7RqaNtQ5vox7Kv5/7FPHNkMO3COvc2EGuzq0NhXJmgAGUPZwkU",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
