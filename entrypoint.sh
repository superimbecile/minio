cd /minio
wget --no-check-certificate https://dl.minio.io/server/minio/release/linux-amd64/minio
chmod +x minio
sleep 2m && mc config host add flaresofdata https://flaresofdata.herokuapp.com "capriciousduck" "Duckisgood25#" && mc mb flaresofdata/bucket &
./minio server --address :$PORT /mnt/minio/data
