datacenter = "hybrid"
data_dir = "./client"
log_level = "INFO"
server = false

node_name = "client"
bind_addr = "0.0.0.0"
client_addr = "0.0.0.0"

retry_join = ["consul-server2:8702", "consul-server1:8701","consul-server3:8703"]

ports {
  http = 8504
  grpc = 8604
  server = 8404
  grpc_tls = 8624
  serf_wan = 8304
  serf_lan = 8704
  dns = 8204
}