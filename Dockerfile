FROM ubuntu:20.04

RUN apt-get update && apt-get install -y python3 python3-pip && apt-get clean all

RUN pip3 install --no-cache-dir flask

COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
