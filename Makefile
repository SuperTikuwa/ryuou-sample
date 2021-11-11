D = "docker"
DC = "docker-compose"
# 適宜変えること
CONTAINER = "sample-centos"

sh:
	$(D) exec -it $(CONTAINER) bash
up:
	$(DC) up -d
