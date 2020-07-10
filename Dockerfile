FROM python:3.6-slim

COPY . /srv/pyapp
WORKDIR /srv/pyapp

RUN apt-get clean \
    && apt-get -y update \
    && apt-get -y install nginx \
    && apt-get -y install python3-dev \
    && apt-get -y install build-essential \
    && rm -rf /var/lib/apt/lists/*


RUN pip install -r requirements.txt --src /usr/local/src

COPY nginx.conf /etc/nginx
RUN chmod +x ./start.sh
CMD ["./start.sh"]