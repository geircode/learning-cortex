FROM geircode/learning_cortex-filecontainer:latest as filecontainer

FROM python:3.8-slim-buster

WORKDIR /app
COPY . /app

RUN apt-get update
RUN apt-get install -y git dos2unix unzip htop

RUN pip install -r requirements.txt 

WORKDIR /files
COPY --from=filecontainer /files .
RUN ls -al

# Docker CLI
RUN tar --strip-components=1 -xvzf docker.tgz -C /usr/local/bin

RUN rm *

WORKDIR /app

ENTRYPOINT tail -f /dev/null