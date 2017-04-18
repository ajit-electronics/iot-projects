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
* [MySensors Library](https://github.com/mysensors/MySensors) //works with easy-io on raspberry pi but not on Arduino
* [RF24](https://github.com/nRF24/RF24)//easy to setup and get it working with arduino for node


### Node
Node is a sensor that transmits data wired or wireless to the gateway. 


Further readings:


## This Project: A door/window status monitor via raspberr pi as gateway hub and (arduino + NRF24l01 + Reed Switch) as node sensors.

NRF24l01 2.4Ghz module
* https://arduino-info.wikispaces.com/Nrf24L01-2.4GHz-HowTo
* https://raw.githubusercontent.com/nRF24/RF24/master/examples/GettingStarted/GettingStarted.ino

