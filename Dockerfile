FROM python:3.6.6-alpine

RUN apk update
RUN apk --no-cache --update-cache add git gcc gfortran python python-dev py-pip build-base wget freetype-dev libpng-dev openblas-dev

# Pythonのパッケージインストール
ADD requirements.txt /tmp
RUN pip install -r /tmp/requirements.txt

WORKDIR /web/python-music
COPY . /web/python-music

# flaskアプリケーションの起動
ENV FLASK_APP /web/python-music/main.py
CMD flask run -h 0.0.0.0 -p $PORT