datacenter = "hybrid"
data_dir = "./data3"
log_level = "INFO"
server = true
bootstrap_expect = 2
node_name = "server3"
bind_addr = "0.0.0.0"
client_addr = "0.0.0.0"

retry_join =["consul-server2:8702", "consul-server3:8703",  "consul-server1:8701"]
acl = {
  enabled = true
  default_policy = "deny"
  enable_token_persistence = true
}

ports {
  http = 8503
  grpc = 8603
  server = 8403
  grpc_tls = 8623
  serf_wan = 8303
  serf_lan = 8703
  dns = 8203
}