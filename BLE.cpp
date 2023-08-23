#include "BLE.h"
#include "BluefruitConfig.h"
#include "AdapterSerial.h"
#include <Arduino.h>
#include <SPI.h>
#include "Adafruit_BLE.h"
#include "Adafruit_BluefruitLE_SPI.h"
#include "Adafruit_BluefruitLE_UART.h"

#define BLUEFRUIT_HWSERIAL_NAME Serial
#define BLUEFRUIT_UART_MODE_PIN -1
#define VERBOSE_MODE false

Adafruit_BluefruitLE_UART ble(BLUEFRUIT_HWSERIAL_NAME, BLUEFRUIT_UART_MODE_PIN);

void startBLE() {
    Serial.flush();
    ble.begin(false);
    ble.echo(false);
    while (! ble.isConnected()) {
      delay(500);
    }
    ble.setMode(BLUEFRUIT_MODE_DATA);
}

void sendBLE() {
    ble.print(F("Hello!"));
}

void readBLE() {
    ble.read();
}
