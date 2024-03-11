import Config

# Note we also include the path to a cache manifest
# containing the digested version of static files. This
# manifest is generated by the `mix assets.deploy` task,
# which you should run after static files are built and
# before starting your production server.
config :code_corner, CodeCornerWeb.Endpoint,
  cache_static_manifest: "priv/static/cache_manifest.json"

# Configures Swoosh API Client
config :swoosh, api_client: Swoosh.ApiClient.Finch, finch_name: CodeCorner.Finch

# Disable Swoosh Local Memory Storage
config :swoosh, local: false

# Do not print debug messages in production
config :logger, level: :info

# Runtime production configuration, including reading
# of environment variables, is done on config/runtime.exs.

config :code_corner, CodeCornerWeb.Endpoint,
  url: [host: "codecorner.gigalixirapp.com"]


2024-03-11T06:11:39.932739+00:00 codecorner[b'codecorner-6cfb659cdd-rrvqq']: web.1  |   1. update [url: [host: ...]] to your actual host in the
2024-03-11T06:11:39.932795+00:00 codecorner[b'codecorner-6cfb659cdd-rrvqq']: web.1  |      config file for your current environment (recommended)
2024-03-11T06:11:39.932810+00:00 codecorner[b'codecorner-6cfb659cdd-rrvqq']: web.1  |
2024-03-11T06:11:39.932834+00:00 codecorner[b'codecorner-6cfb659cdd-rrvqq']: web.1  |   2. pass the :check_origin option when configuring your
2024-03-11T06:11:39.932854+00:00 codecorner[b'codecorner-6cfb659cdd-rrvqq']: web.1  |      endpoint or when configuring the transport in your
2024-03-11T06:11:39.932879+00:00 codecorner[b'codecorner-6cfb659cdd-rrvqq']: web.1  |      UserSocket module, explicitly outlining which origins
2024-03-11T06:11:39.932912+00:00 codecorner[b'codecorner-6cfb659cdd-rrvqq']: web.1  |      are allowed:
2024-03-11T06:11:39.932936+00:00 codecorner[b'codecorner-6cfb659cdd-rrvqq']: web.1  |
2024-03-11T06:11:39.932978+00:00 codecorner[b'codecorner-6cfb659cdd-rrvqq']: web.1  |         check_origin: ["https://example.com",
2024-03-11T06:11:39.933040+00:00 codecorner[b'codecorner-6cfb659cdd-rrvqq']: web.1  |                        "//another.com:888", "//other.com"]
