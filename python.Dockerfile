#filename
#FROM alpine
FROM python:3.8-slim-buster
RUN apt-get update && apt-get install -q -y vim iputils-ping curl
#name of the binary (image)
RUN mkdir /app
COPY src/ /app/
WORKDIR /app
#add a directory
#ADD deploy /deploy/
RUN python3 -m pip install flask requests
#there can only be one CMD in a dockerfile
CMD [ "python", "/app/api.py"]

# port that the container will listen on
EXPOSE 5000

