FROM python:3.7

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /code/hello


COPY Pipfile Pipfile.lock /code/hello/
RUN pip install pipenv && pipenv install --system

COPY . /code/hello/