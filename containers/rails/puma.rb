workers 1
threads_count = 5
threads threads_count, threads_count

prune_bundler

worker_timeout 300
rackup DefaultRackup
# port 3000
ssl_bind "0.0.0.0", "3000", {
  cert: "config/certs/localhost.pem",
  key:  "config/certs/localhost-key.pem"
}
environment ENV["RAILS_ENV"]