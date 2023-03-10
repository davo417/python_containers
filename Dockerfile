#syntax=docker/dockerfile:1

FROM python:3.11-bullseye

WORKDIR /opt

COPY requirements.txt requirements.txt

RUN apt update && apt install mpich mpi-default-dev -y
RUN python -m ensurepip --upgrade
RUN python -m pip install -r /opt/requirements.txt

COPY . .
