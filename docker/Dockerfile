# Use the official Hyperledger Besu image as the base
FROM hyperledger/besu:latest

# Set the working directory
WORKDIR /opt/besu

# Copy configuration files into the container
COPY config/genesis.json ./genesis.json
COPY config/besu-config.toml ./besu-config.toml

# Expose necessary ports
EXPOSE 8545 8546 30303 30303/udp

# Command to run the Besu node
# CMD ["/opt/besu/bin/besu", "--config-file=/opt/besu/besu-config.toml"]

# Default command to run Besu
CMD [
  "besu",
  "--data-path=/var/lib/besu",
  "--genesis-file=/config/genesis.json",
  "--config-file=/config/besu-config.toml",
  "--rpc-http-enabled",
  "--rpc-ws-enabled",
  "--metrics-enabled"
]