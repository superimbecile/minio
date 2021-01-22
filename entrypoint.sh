cd /minio
chmod +x minio
sleep 2m && mc config host add flaresofdata https://flaresofdata.herokuapp.com "capriciousduck" "Duckisgood25#" && mc mb flaresofdata/bucket &
./minio server --address :$PORT /mnt/minio/data
