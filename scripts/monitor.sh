#!/bin/bash

# Variables
log_file="./logs/besu.log"

echo "Monitoring Besu logs..."

tail -f "$log_file"