FROM python:3.6.9

COPY requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

COPY run.sh /run.sh

RUN chmod +x /run.sh

COPY namenode_exporter.py resourcemanager_exporter.py /opt/src/

ENTRYPOINT ["/run.sh"]
