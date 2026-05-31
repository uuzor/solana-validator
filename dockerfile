FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    curl \
    build-essential \
    pkg-config \
    libssl-dev \
    ca-certificates

RUN sh -c "$(curl -sSfL https://release.anza.xyz/stable/install)"

ENV PATH="/root/.local/share/solana/install/active_release/bin:${PATH}"

EXPOSE 8899

CMD solana-test-validator \
    --ledger /data/ledger \
    --rpc-bind-address 0.0.0.0 \
    --rpc-port 8899
