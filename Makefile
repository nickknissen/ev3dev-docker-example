BUILD_TARGET?=build/hello
SOURCE?=hello-world/hello.c
EV3_IP?=192.168.1.123
EV3_BIN_PATH?=/home/ev3
DOCKER_CMD?=docker run --rm -it -v $(PWD):/src -w /src ev3cc

default: build_c

build_c:
	$(DOCKER_CMD) arm-linux-gnueabi-gcc -o $(BUILD_TARGET) $(SOURCE)

build_cpp:
	$(DOCKER_CMD) arm-linux-gnueabi-cpp-4.9 -I ev3dev-lang-cpp/ -std=c++11 -o $(BUILD_TARGET) $(SOURCE)

deploy:
	scp $(BUILD_TARGET) $(EV3_IP):$(EV3_BIN_PATH)

setup:
	docker pull ev3dev/debian-jessie-cross
	docker tag ev3dev/debian-jessie-cross ev3cc
