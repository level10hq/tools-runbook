ifeq (,.env)
    include .env
	export
endif

.PHONY: clean
clean:
	docker stop $(shell docker ps -aq)
	docker rm $(shell docker ps -aq)
	# will remove everything
	docker container rm -f $(shell docker container ls -qa)
	docker image rm -f $(shell docker image ls -q)
	#Remove all images and containers.
	#docker rm $(docker ps -q -a) -f && docker rmi $(docker images -q) -f

.PHONY: stop
stop:
	# Remove orphaned containers as well
	docker-compose down --remove-orphans

.PHONY: docs
docs:
	docker-compose up -d docs
