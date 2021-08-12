FROM python:3.7.11-slim-buster

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
      curl

ENV POETRY_VERSION=1.1.7
ENV PATH="/root/.local/bin:$PATH"
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/install-poetry.py | python -