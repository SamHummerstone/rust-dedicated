label ?= latest

build:
	docker build -t samhummerstone/rust_dedicated:${label} .

build-clean:
	docker build --no-cache -t samhummerstone/rust_dedicated:${label} .

run:
	docker run -it --rm --network=host -v rust_app:/home/steam/app/rustapp -v steam:/home/steam/Steam -p 28015:28015 -p 28015:28015/udp -p 28016:28016 -p 28016:28016/udp samhummerstone/rust_dedicated:${label}

run-bash:
	docker run -it --rm --network=host -v rust_app:/home/steam/app/rustapp -v steam:/home/steam/Steam -p 28015:28015 -p 28015:28015/udp -p 28016:28016 -p 28016:28016/udp samhummerstone/rust_dedicated:${label} bash