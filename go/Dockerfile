FROM golang:1.24-alpine AS build

WORKDIR /build

COPY go.mod ./

COPY *.go ./

RUN CGO_ENABLED=0 go build -ldflags "-w -s" -o /app

# hadolint ignore=DL3007
FROM gcr.io/distroless/static-debian11:latest AS deploy
COPY --from=build /app /

CMD ["/app"]
