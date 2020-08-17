FROM python:3.8.1

ENV PYTHONBUFFERED 1

RUN apt-get update && apt-get -y install \
    libpq-dev

RUN mkdir /app
WORKDIR /app

ADD ./requirements.txt   /app/

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ADD . /app/