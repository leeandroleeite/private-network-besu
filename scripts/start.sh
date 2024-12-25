#!/bin/bash

# Variables
data_dir="./data"
config_file="./config/besu-config.toml"
genesis_file="./config/genesis.json"

# Ensure directories exist
mkdir -p "$data_dir"

# Start Besu node
besu \
  --data-path="$data_dir" \
  --genesis-file="$genesis_file" \
  --config-file="$config_file" \
  --rpc-http-enabled \
  --rpc-ws-enabled \
  --metrics-enabled