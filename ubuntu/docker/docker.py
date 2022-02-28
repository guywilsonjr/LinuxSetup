import requests

compose_rel_link = "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)"
compose_local_dest = '/usr/local/bin/docker-compose'
