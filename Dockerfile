FROM python:2.7.12-alpine
RUN apk update && apk add gcc
RUN pip install scrapy
