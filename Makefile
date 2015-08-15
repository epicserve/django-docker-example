MACHINE_IP=`docker-machine ip`

help:
	@echo "open_browser  Open the browser"
	@echo "start         Start composer"

open_browser:
	@open http://$(MACHINE_IP):8000

start:
	@docker-compose up

stop:
	@docker-compose stop
