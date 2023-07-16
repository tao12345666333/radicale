FROM python:3.11-slim

RUN python3 -m pip install --upgrade radicale

CMD ["python3", "-m", "radicale", "--storage-filesystem-folder=/radicale", "--hosts=0.0.0.0:5232"]

EXPOSE 5232