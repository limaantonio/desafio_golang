FROM golang:1.17 as builder

WORKDIR /app

COPY . .

RUN go build -o main

FROM scratch

COPY --from=builder /app .

CMD ["./main"]