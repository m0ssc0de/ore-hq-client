FROM rust
WORKDIR /ore-hq-client
COPY . /ore-hq-client
RUN cargo build --release