FROM debian:stretch-slim
RUN apt-get update; apt-get install wget -y;
ADD entrypoint.sh /entrypoint.sh

#Downloading minio client to create config on heroku dyno restarts
RUN wget https://dl.min.io/client/mc/release/linux-amd64/mc -O /usr/local/bin/mc \
    && chmod +x /usr/local/bin/mc

RUN mkdir -p /mnt/minio/data && \
    chmod +x /entrypoint.sh && \
    mkdir -m 777 /minio
ENV MINIO_ACCESS_KEY capriciousduck
ENV MINIO_SECRET_KEY Duckisgood25#
CMD /entrypoint.sh
