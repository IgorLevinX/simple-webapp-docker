FROM ubuntu:16.04

RUN apt-get update && apt-get install -y python3 python3-pip

RUN pip3 uninstall markupsafe && pip3 install MarkupSafe==2.1.1 Flask==2.1.2 

COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
