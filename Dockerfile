FROM golang:1.9 as builder

ARG PACKAGE=github.com/markfisher/time
ARG COMMAND=time

WORKDIR /go/src/${PACKAGE}
COPY . .

RUN CGO_ENABLED=0 go build -v -a -installsuffix cgo ${COMMAND}.go

###########

FROM scratch

ARG PACKAGE=github.com/markfisher/time
ARG COMMAND=time
COPY --from=builder /go/src/${PACKAGE}/${COMMAND} /${COMMAND}

ENTRYPOINT ["/time"]

