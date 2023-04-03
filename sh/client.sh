docker run -d \
  --name consul-client \
  --network consul-network \
  -p 8204:8204 \
  -p 8204:8204/udp \
  -p 8304:8304 \
  -p 8404:8404 \
  -p 8504:8504 \
  -p 8604:8604 \
  -p 8624:8624 \
  -p 8704:8704 \
  -v $(pwd)/../hcl/client.hcl:/consul/config/client.hcl \
  consul:latest agent -config-file /consul/config/client.hcl
