ARG RUST_VERSION=latest
FROM rust:${RUST_VERSION}

RUN cargo install wasm-pack

RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get update && apt-get install -y nodejs

ENTRYPOINT ["wasm-pack"]
