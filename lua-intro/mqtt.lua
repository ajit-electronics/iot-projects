-- init mqtt client without logins, keepalive timer 120s
--m = mqtt.Client(mydevices_MQTT_CLIENT_ID, 120)

-- init mqtt client with logins, keepalive timer 120sec
m = mqtt.Client(mydevices_MQTT_CLIENT_ID, 120, mydevices_MQTT_USER_NAME, mydevices_MQTT_PASS)

-- setup Last Will and Testament (optional)
-- Broker will publish a message with qos = 0, retain = 0, data = "offline" 
-- to topic "/lwt" if client don't send keepalive packet
m:lwt("/lwt", "offline", 0, 0)

m:on("connect", function(client) print ("connected") end)
m:on("offline", function(client) print ("offline") end)

-- on publish message receive event
m:on("message", function(client, topic, data) 
  print(topic .. ":" ) 
  if data ~= nil then
    print(data) 
  end 
end)
 
-- for TLS: m:connect("192.168.11.118", secure-port, 1)
m:connect(mydevices_MQTT_SERVER, 1883, 0, 
  function(client)
  print("connected") 
  m:publish("v1/2be454b0-2848-11e7-bc7d-0921ad51511b/things/2ac93700-2864-11e7-a4a6-237007b7399c/data/1","temp,c=30.9",0,0, function(client) print("sent") end)
  end, 
  function(client, reason) print("failed reason: "..reason) end)
 
-- Calling subscribe/publish only makes sense once the connection
-- was successfully established. In a real-world application you want
-- move those into the 'connect' callback or make otherwise sure the 
-- connection was established.

-- subscribe topic with qos = 0
--m:subscribe("/topic",0, function(client) print("subscribe success") end)
-- publish a message with data = hello, QoS = 0, retain = 0
--m:publish("/topic","hello",0,0, function(client) print("sent") end)

--m:close(); 
-- you can call m:connect again