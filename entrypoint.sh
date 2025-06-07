#!/bin/sh
set -e

go mod init greetings
go mod tidy
go test -v
