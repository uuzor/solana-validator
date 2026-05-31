#!/bin/bash
set -e

echo "Starting Solana Test Validator..."

# Ensure ledger directory exists
mkdir -p /data/ledger

# Start validator
exec solana-test-validator \
  --ledger /data/ledger \
  --rpc-bind-address 0.0.0.0 \
  --rpc-port 8899 \
  --limit-ledger-size
