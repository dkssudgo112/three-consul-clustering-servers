docker run -d \
  --name consul-server2 \
  --network consul-network \
  -p 8202:8202 \
  -p 8202:8202/udp \
  -p 8302:8302 \
  -p 8402:8402 \
  -p 8502:8502 \
  -p 8602:8602 \
  -p 8622:8622 \
  -p 8702:8702 \
  -v $(pwd)/../hcl/server2.hcl:/consul/config/server2.hcl \
  consul:latest agent -config-file /consul/config/server2.hcl
