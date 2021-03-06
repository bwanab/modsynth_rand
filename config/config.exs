# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

# This configuration is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project. For this reason,
# if you want to provide default values for your application for
# 3rd-party users, it should be done in your "mix.exs" file.

# You can configure for your application as:
#
config :sc_em,
  port: String.to_integer(System.fetch_env!("SC_PORT")),
  ip: String.split(System.fetch_env!("SC_IP"), ".") |> Enum.map(&(String.to_integer(&1))) |> List.to_tuple,
  remote_synth_dir: System.fetch_env!("MODSYNTH_REMOTE_DIR"),
  local_synth_dir: System.fetch_env!("MODSYNTH_LOCAL_DIR")

#
# And access this configuration in your application as:
#
#     Application.get_env(:log_server, :key)
#
# Or configure a 3rd-party app:
#
config :logger,
  level: :info,
  format: "[$level] $messge $metadata\n",
  metadata: [:error_code, :file, :line]

#

# It is also possible to import configuration files, relative to this
# directory. For example, you can emulate configuration per environment
# by uncommenting the line below and defining dev.exs, test.exs and such.
# Configuration from the imported file will override the ones defined
# here (which is why it is important to import them last).
#
#     import_config "#{Mix.env}.exs"
