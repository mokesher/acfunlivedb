FROM golang:1.20-alpine AS go_build

ADD . /ac
WORKDIR /ac


ENV GO111MODULE=on \
    GOPROXY="https://goproxy.cn,direct" \
    CGO_ENABLED=0 \
    GOFLAGS="-buildvcs=false"

RUN go build

FROM alpine

RUN mkdir /ac/

COPY --from=go_build /ac/acfunlivedb /acfunlivedb

ENTRYPOINT ["/acfunlivedb"]


# docker build -t ac:v1 .
