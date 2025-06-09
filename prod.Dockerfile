FROM golang:1.24-alpine

WORKDIR /src

COPY ./golang_app/greetings/greetings.go ./greetings.go
COPY ./golang_app/greetings/greetings_test.go ./greetings_test.go
COPY entrypoint.sh ./entrypoint.sh

RUN chmod +x entrypoint.sh

CMD ["./entrypoint.sh"]