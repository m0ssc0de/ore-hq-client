# FROM rust AS builder
FROM yesq/client-builder AS builder
WORKDIR /ore-hq-client
COPY . /ore-hq-client
RUN cargo build --release

FROM ubuntu
COPY --from=builder /ore-hq-client/target/release/ore-hq-client /ore-hq-client