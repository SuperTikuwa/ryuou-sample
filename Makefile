D = "docker"
DC = "docker-compose"
# 適宜変えること
CONTAINER = "sample-centos"
NAME=""

sh:
	$(D) exec -it $(CONTAINER) bash
up:
	$(DC) up -d

submit:
	$(D) stop $(CONTAINER)
	$(D) commit $(CONTAINER) $(NAME)/$(CONTAINER)
	$(D) push $(NAME)/$(CONTAINER)
