FROM ubuntu:16.04

RUN apt-get update && apt-get install -y python3 python3-pip 

RUN pip3 install --upgrade setuptools
RUN pip3 install --upgrade pip
RUN pip3 install --no-cache-dir --upgrade MarkupSafe==2.1.1 Jinja2==3.1.2 Flask==2.1.2 

COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
