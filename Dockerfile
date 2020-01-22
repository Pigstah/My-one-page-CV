FROM ubuntu:16.04

MAINTAINER Your Name "matthew.pigram2@gmail.com"

RUN apt-get update -y && \
    apt-get install -y python3-pip python-dev && \
    apt-get install -y vim

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN python3 -m pip install --upgrade pip && \
    python3 -m pip install Flask gunicorn

COPY . /app

CMD gunicorn -b 0.0.0.0:5000 app

