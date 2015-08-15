BOOT2DOCKER_IP=`boot2docker ip`

help:
	@echo "open_browser  Open the browser"
	@echo "start         Start composer"

open_browser:
	@open http://$(BOOT2DOCKER_IP):8000

start:
	@docker-compose up

stop:
	@docker-compose stop
