cd /minio
wget --no-check-certificate https://dl.minio.io/server/minio/release/linux-amd64/minio
chmod +x minio
./minio server --address 164.90.163.181:9000 /mnt/minio/data
#./minio server /mnt/minio/data
