FROM python:3.7-slim

ENV DEBIAN_FRONTEND noninteractive
ENV PYTHONPATH .
ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY Pipfile Pipfile.lock /app/
RUN \
  pip install --no-cache-dir pipenv \
  && pipenv install --system --deploy --dev

COPY . /app
