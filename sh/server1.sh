docker run -d \
  --name consul-server1 \
  --network consul-network \
  -p 8201:8201 \
  -p 8201:8201/udp \
  -p 8301:8301 \
  -p 8401:8401 \
  -p 8501:8501 \
  -p 8601:8601 \
  -p 8621:8621 \
  -p 8701:8701 \
  -v $(pwd)/../hcl/server1.hcl:/consul/config/server1.hcl \
  consul:latest agent -config-file /consul/config/server1.hcl
