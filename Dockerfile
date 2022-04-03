FROM python:3.10.4-alpine3.14 as build-stage

RUN apk add --no-cache alpine-sdk
RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip3 install pystache

WORKDIR /src

COPY src/ .

RUN make

FROM nginx:1.21.6-alpine

WORKDIR /serve

COPY --from=build-stage /src/*.html /serve/
COPY src/js/ /serve/js/
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
