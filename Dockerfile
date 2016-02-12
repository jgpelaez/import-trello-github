FROM python:3.5.1-alpine

ADD . /src
WORKDIR /src
RUN pip install -r requirements.txt