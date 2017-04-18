
#include <SPI.h>
#include "RF24.h"

/* Hardware configuration: Set up nRF24L01 radio on SPI bus plus pins 7 & 8 */
RF24 radio(7, 8);

#define BUTTON_PIN 3

byte addresses[][6] = {"1Node", "2Node"}; //todo


void setup() {
  Serial.begin(115200);
  Serial.println(F("RF24 reed switch"));

  pinMode(BUTTON_PIN, INPUT);
  digitalWrite (BUTTON_PIN, LOW);

  radio.begin();

  // Set the PA Level low to prevent power supply related issues since this is a
  // getting_started sketch, and the likelihood of close proximity of the devices. RF24_PA_MAX is default.
  radio.setPALevel(RF24_PA_LOW);

  radio.openWritingPipe(addresses[0]);//todo

  // Start the radio listening for data
  //radio.startListening();
}

byte doorReedState;
void loop() {
  doorReedState = digitalRead(BUTTON_PIN);

  if (!radio.write( &doorReedState, sizeof(unsigned byte) )) {
    Serial.print(F("failed: "));
  }
  else {
    Serial.print("sent: ");
  }
  Serial.println(doorReedState);

  delay(1000);
}
