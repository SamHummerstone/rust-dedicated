label ?= latest

build:
	docker build -t samhummerstone/rust_dedicated:${label} .

build-clean:
	docker build --no-cache -t samhummerstone/rust_dedicated:${label} .