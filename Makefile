.DEFAULT_GOAL := help

CONF_PATH = "/path/to/nginx.conf"

format: ## format nginx.conf
	$(eval DIR_NAME := $(shell cd $(shell dirname ${CONF_PATH}); pwd))
	$(eval FILE_NAME := $(shell basename ${CONF_PATH}))
	docker run --rm \
		-v $(DIR_NAME):/work \
		-w /work \
		tmknom/docker-nginx-config-formatter:1.0.0 \
		nginxfmt $(FILE_NAME)


.PHONY: help
help: ## show help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
