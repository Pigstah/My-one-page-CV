FROM ubuntu:16.04

MAINTAINER Your Name "matthew.pigram2@gmail.com"

RUN apt-get update -y && \
    apt-get install -y python3-pip python-dev && \
    apt-get install -y vim

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN python3 -m pip install --upgrade pip && \
    python3 -m pip install Flask

COPY . /app

CMD python3 app.py

