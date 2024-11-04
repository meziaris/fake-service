ARG GO_VERSION=1.23.0
FROM golang:${GO_VERSION}-alpine AS builder

WORKDIR /app
COPY . .

RUN go mod download
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags "-s -w" -o app

FROM gcr.io/distroless/static-debian11
WORKDIR /app
COPY --from=builder --chown=nonroot:nonroot /app/app ./app
ENTRYPOINT ["./app"]
