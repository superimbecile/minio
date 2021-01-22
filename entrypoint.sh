cd /minio
chmod +x minio
sleep 1m && mc config host add flaresofdata https://flaresofdata.herokuapp.com "capriciousduck" "Duckisgood25#" && mc mb flaresofdata/bucket && mc policy set public flaresofdata/bucket --recursive &
./minio server --address :$PORT /mnt/minio/data
