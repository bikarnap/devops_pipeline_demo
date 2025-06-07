FROM golang:1.24-alpine

COPY ./golang_app/greetings/greetings.go ./src
COPY ./golang_app/greetings/greetings_test.go ./src

WORKDIR ./src

CMD go mod init greetings && go mod tidy && go test -v
