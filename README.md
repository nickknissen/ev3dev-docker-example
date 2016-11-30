# Use makefile for easier deployment to mindstorm devices running ev3dev


### Examples

```bash
# Download latest docker image
make setup

# build Deploy hello world example
make
make deploy

# Deploy to a specefic IP and path
make deploy EV3_IP=10.0.0.12 EV3_BIN_PATH=/home/robot1/

# Build some C++
make build_cpp BUILD_TARGET=build/button-test SOURCE=ev3dev-lang-cpp/demos/button-test.cpp


# Use with enviroment variables
export BUILD_TARGET=build/button-test export SOURCE=ev3dev-lang-cpp/demos/button-test.cpp
make build_cpp
make deploy
```
