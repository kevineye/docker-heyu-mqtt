[![](https://imagelayers.io/badge/kevineye/heyu:latest.svg)](https://imagelayers.io/?images=kevineye/heyu:latest 'Get your own badge on imagelayers.io')

This is a dockerized [heyu](http://www.heyu.org/) for controlling and monitoring X10 home automation devices via a CM11A module.

## Setup

Run this to generate some config files:

    docker run --rm -v /your/config/dir:/etc/heyu kevineye/heyu
    
Copy `x10config.sample` to `x10.sched.sample` and to `x10.conf` and `x10.sched` and edit your configuration.

## Run

    docker run -d \
        -v /your/config/dir:/etc/heyu \
        -v /etc/localtime:/etc/localtime \
        --device /dev/ttyUSB0 \
        kevineye/heyu

The device can be configured in the `x10.conf` file.

## MQTT Services

...
