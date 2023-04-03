datacenter = "hybrid"
data_dir = "./data1"
log_level = "INFO"
server = true
bootstrap_expect = 2
node_name = "server1"
bind_addr = "0.0.0.0"
client_addr = "0.0.0.0"
retry_join = ["consul-server2:8702", "consul-server3:8703",  "consul-server1:8701"]

acl = {
  enabled = true
  default_policy = "deny"
  enable_token_persistence = true
}

ports {
  http = 8501
  grpc = 8601
  server = 8401
  grpc_tls = 8621
  serf_wan = 8301
  serf_lan = 8701
  dns = 8201

}