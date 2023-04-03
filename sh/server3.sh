docker run -d \
  --name consul-server3 \
  --network consul-network \
  -p 8203:8203 \
  -p 8203:8203/udp \
  -p 8303:8303 \
  -p 8403:8403 \
  -p 8503:8503 \
  -p 8603:8603 \
  -p 8623:8623 \
  -p 8703:8703 \
  -v $(pwd)/../hcl/server3.hcl:/consul/config/server3.hcl \
  consul:latest agent -config-file /consul/config/server3.hcl
