datacenter = "hybrid"
data_dir = "./data2"
log_level = "INFO"
server = true
bootstrap_expect = 2
node_name = "server2"
bind_addr = "0.0.0.0"
client_addr = "0.0.0.0"
retry_join = ["consul-server2:8702", "consul-server3:8703",  "consul-server1:8701"]

acl = {
  enabled = true
  default_policy = "deny"
  enable_token_persistence = true
}

ports {
  http = 8502
  grpc = 8602
  server = 8402
  grpc_tls = 8622
  serf_wan = 8302
  serf_lan = 8702
  dns = 8202

}