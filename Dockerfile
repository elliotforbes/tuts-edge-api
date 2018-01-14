FROM golang:latest 
RUN mkdir /app 
ADD . /app/ 
WORKDIR /app 
RUN go build -o cmd/rest-api pkg/main.go 
CMD ["/app/rest-api"]