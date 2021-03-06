FROM ubuntu:latest
MAINTAINER Ajar Kumar "ajarv@hotmail.com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential curl
COPY . /app
WORKDIR /app
VOLUME /data
RUN pip install -r requirements.txt
ENV PYTHONPATH="PYTHONPATH=/app:$PYTHONPATH"
ENTRYPOINT ["python"]
CMD ["rest_api_demo/app.py"]
