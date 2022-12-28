import controlP5.*; // importing it
import processing.serial.*;

Serial port;

ControlP5 cp5; // create object
PFont font;
boolean lightOn = true;

void setup() { // same as arduino

  size(800, 500); // window size  (width, height)

  printArray(Serial.list());     // Prints all available serial ports
  //port = new Serial(this, "COM5", 9600); // I have connected arduino  to com3 CHANGE FOR ME

  cp5 = new ControlP5(this);
  font = createFont("calibri light", 20);  // custom fonts for buttons and title

  cp5.addButton("On") // name of the buttom
    .setPosition(150, 100)   // x and y coordinates of upper left of the button
    .setSize(100, 80)       // (width, height)
    .setFont(font)
    ;

  cp5.addButton("Off") // name of the buttom
    .setPosition(150, 250)   // x and y coordinates of upper left of the button
    .setSize(100, 80)       // (width, height)
    .setFont(font)
    ;
}

void draw() { // same as loop in arduino 

  background(204, 245, 255); // background color of window (r,g,b) or (0 to 255)

  if (lightOn == false)
  {
    // Light Switch
    fill(255, 255, 255);           // GOOD
    rect(400, 35, 290, 410);  // x, y, width, height       // GOOD
    fill(240, 240, 240);                                   // GOOD
    rect(505, 160, 75, 170);  // x, y, width, height       // GOOD
    fill(0, 0, 0);
    rect(515, 170, 55, 150);  // x, y, width, height       // GOOD

    fill(224, 224, 224);       //200
    rect(520, 180, 45, 70);

    fill(200, 200, 200);  // 255
    rect(520, 310, 45, 25);

    fill(255, 255, 255); // 224
    rect(520, 250, 45, 60);

    // title to the window
    fill(0, 0, 0);                             // text color (r,g,b)
  } else
  {
    // Light Switch
    fill(255, 255, 255);
    rect(400, 35, 290, 410);  // x, y, width, height
    fill(240, 240, 240);
    rect(505, 160, 75, 170);  // x, y, width, height
    fill(0, 0, 0);
    rect(515, 170, 55, 150);  // x, y, width, height

    fill(200, 200, 200);
    rect(520, 190, 45, 60);

    fill(255, 255, 255);
    rect(520, 165, 45, 25);

    fill(224, 224, 224);
    rect(520, 250, 45, 60);

    // title to the window
    fill(0, 0, 0);                             // text color (r,g,b)
  }
}

void On() {
  //port.write('u');
  lightOn = true;
}

void Off() {
  //port.write('d');
  lightOn = false;
}

/*

 
 Anyway, what you should do is define an array of colors that your background will use.
 
 color[] colors = {color(255,0,0), color(0,255,0), color(0,0,255), color(0) };
 
 Then have an index into that array for the current background color:
 
 int currentColor = 0;
 
 Then use that index to set the background color:
 
 background(colors[currentColor]);
 
 Now changing the color is as easy as changing the value of your variable!
 
 currentColor++;
 currentColor%=colors.length;
 
 You can do that when you detect one of the arrows is clicked on.
 
 */


/*

 attempt two
 
 PImage blackLeft, blackRight, blueLeft, blueRight;
 int width = 188;
 int height = 184;
 int currentColor = 0;
 
 void setup() {
 size(600,400);
 background(255);
 blackLeft = loadImage("black_arrow_left.gif");
 blackRight = loadImage("black_arrow_right.gif");
 blueLeft = loadImage("blue_arrow_left.gif");
 blueRight = loadImage("blue_arrow_right.gif");
 }
 
 void draw() {
 switch(currentColor) {
 case 0: // If currentColor is 0, do this
 background(255,255,0);
 break;
 case 1: // If currentColor is 1, do this
 background(0,255,0);
 break;
 }
 image(blackLeft,100,100);
 if (mouseX >= 100 && mouseX <= 100 + width &&
 mouseY >= 100 && mouseY <= 100 + height )
 {
 image(blueLeft,100,100);
 }
 image(blackRight,300,100);
 if (mouseX >= 300 && mouseX <= 300 + width &&
 mouseY >= 100 && mouseY <= 100 + height )
 {
 image(blueRight,300,100);
 }
 }
 
 void mousePressed() {
 if (mouseX >= 100 && mouseX <= 100 + width &&
 mouseY >= 100 && mouseY <= 100 + height ) 
 {
 currentColor--; // When left button is clicked, decrease currentColor by one
 if (currentColor < 0) {currentColor = 2;} // When currentColor is 0 and decreased it will become -1, when this happens set it to 2
 }
 if (mouseX >= 300 && mouseX <= 300 + width &&
 mouseY >= 100 && mouseY <= 100 + height )
 {
 currentColor++; // When right button is clicked, increase currentColor by one
 if (currentColor > 2) {currentColor = 0;} // When currentColor is 2 and increased it will become 3, when this happens set it to 0
 }
 }
 
 */
