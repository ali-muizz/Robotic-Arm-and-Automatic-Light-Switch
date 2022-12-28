#include <SoftwareSerial.h>
#include <Servo.h>
Servo myservo;  // create servo object to control a servo

SoftwareSerial Bluetooth(9, 10); // RX, TX
int Data; // the data received
int pos = 0;    // variable to store the servo position

void setup() {
  Bluetooth.begin(9600);
  Serial.begin(9600);
  myservo.attach(6);  // attaches the servo on pin 9 to the servo object
  myservo.write(80);
  delay(1000);
  Serial.println("Waiting for command...");
  Bluetooth.println("Send 1 to turn on the LED. Send 0 to turn Off");

}

void loop() {
  if (Bluetooth.available()) { //wait for data received
    Data = Bluetooth.read();
    if (Data == '1') {
      Serial.println("TURNING ON");
      myservo.write(140);
      delay(1000);
      myservo.write(80);
    }
    else if (Data == '0') {
      //Bluetooth.println("LED  On D13 Off ! ");
      Serial.println("TURNING OFF");
      myservo.write(20);
      delay(1000);
      myservo.write(80);
    }
    delay(1000);
  }
}
