pin=1
gpio.mode(pin, gpio.OUTPUT)
gpio.write(pin, gpio.LOW)
print("------low")
gpio.write(pin, gpio.HIGH)