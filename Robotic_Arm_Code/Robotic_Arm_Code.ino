#include <Servo.h>
#include <SoftwareSerial.h>
Servo servo1;
Servo servo2;
Servo servo3;
Servo servo4;
Servo servo5;
int Data; // data recieved
int pos1 = servo1.read(); // Variabes of the servo positions
int pos2 = servo2.read();
int pos3 = servo3.read();
int pos4 = servo4.read();
int pos5 = servo5.read();

void setup() {
    Serial.begin(9600);
  servo1.attach(3);
  servo2.attach(4);
  servo3.attach(5);
  servo4.attach(6);
  servo5.attach(7);

  servo1.write(pos1);
  servo2.write(pos2);
  servo3.write(pos3);
  servo4.write(pos4);
  servo5.write(pos5);
    delay(1000);
}
void loop() {
  if (Serial.available() > -1) {
    // read the incoming byte:
    
  Data = Serial.read();
  
      if(Data == '0')
  {
    pos1 = pos1 + 10;
    servo1.write(pos1);
  }

  if(Data == '1')
  {
    pos1 = pos1 - 10;
    servo1.write(pos1);
  }

  if(Data == '2')
  {
    pos2 = pos2 + 10;
    servo2.write(pos2);
  }

  if(Data == '3')
  {
    pos2 = pos2 - 10;
    servo2.write(pos2);
  }

  
  if(Data == '4')
  {
    pos3 = pos3 + 10;
    servo3.write(pos3);
  }

  if(Data == '5')
  {
    pos3 = pos3 - 10;
    servo3.write(pos3);
  }

    if(Data == '6')
  {
    pos4 = pos4 + 10;
    servo4.write(pos4);
  }

      if(Data == '7')
  {
    pos4 = pos4 - 10;
    servo4.write(pos4);
  }

      if(Data == '8')
  {
    pos5 = pos5 + 10;
    servo5.write(pos5);
  }

        if(Data == '9')
  {
    pos5 = pos5 - 10;
    servo5.write(pos5);
  }

  delay(500);
  }
  
}
