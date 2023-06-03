FROM python:3.10-alpine

COPY ./ /work
RUN apk update && pip install -r /work/requirements.txt --no-cache-dir
RUN pip install -e /work
EXPOSE 8080
CMD web_server
