FROM python:3.10-slim-buster

RUN mkdir /code
WORKDIR /code

RUN apt-get update && apt-get install --reinstall build-essential -y && apt-get install unixodbc unixodbc-dev -y

RUN apt-get install -y curl
RUN apt-get update

ENV PYTHONPATH "${PYTHONPATH}:/code"
ADD requirements.txt /code/
RUN pip3 install -r requirements.txt
