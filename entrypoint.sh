cd /minio
wget --no-check-certificate https://dl.minio.io/server/minio/release/linux-amd64/minio
chmod +x minio
#./minio server --address :10000 /mnt/minio/data
./minio server /mnt/minio/data
