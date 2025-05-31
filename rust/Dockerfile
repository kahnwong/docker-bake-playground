FROM rust:1.86-alpine3.20 AS build

WORKDIR /build

COPY Cargo.toml ./
RUN mkdir src && echo "fn main() {}" > src/main.rs

COPY src src
RUN cargo build --release && \
    strip target/release/docker-bake-playground && \
    cp ./target/release/docker-bake-playground /docker-bake-playground

# hadolint ignore=DL3007
FROM gcr.io/distroless/static-debian11:latest AS deploy
COPY --from=build /docker-bake-playground /

CMD ["/docker-bake-playground"]
