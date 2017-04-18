## IOT Setup Overview

## Controller <-> Gateway <-> Node

### Controller
Is a dashboard web or other app that provides functionlity of a dashboard. One can monitor/change status of various sensors or can 
send commands to gate way, to be forwarded to respective node sensor.
e.g.

* [easy iot server](http://iot-playground.com/download)
* [https://domoticz.com/](https://domoticz.com/)
* [https://www.openhab.org/](https://www.openhab.org/)

### Gateway
Is an application that receives sensor data passes it on to controller. 
It also passes on controller commands to change status or run a motor etc to respective sensor nodes. 
e.g. 
* [MySensors Library]()
* [RF24]()
* [RF24]()


Further readings:


## This Project: A door/window status monitor via raspberr pi as gateway hub and (arduino + rf24 + ) as node sensors.

NRF24l01 2.4Ghz module
* https://arduino-info.wikispaces.com/Nrf24L01-2.4GHz-HowTo
