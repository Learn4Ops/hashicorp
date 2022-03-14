# Some useful consul cli

consul validate   file.hcl

consul agent \
  -server \
  -bootstrap-expect=1 \
  -node=agent-one \
  -bind=<ip> \
  -data-dir=./data \
  -config-dir=./consul.d

consul agent \
  -node=agent-two \
  -bind=<ip> \
  -enable-script-checks=true \
  -data-dir=./data \
  -config-dir=./consul.d


consul agent \
  -dev \
  -bootstrap-expect=1 \
  -node=server-1 \
  -bind=<ip> \
  -data-dir=./data \
  -config-dir=./consul.d