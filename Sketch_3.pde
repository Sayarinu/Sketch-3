// Sketch 3 Carter Garcia
// Controls:
// r = changes the red rgb value
// g = changes the green rgb value
// b = changes the blue rgb value
// q = clears screen
// mouse click = puts the locations for the star circles

int x, y;

float angle; // Matrix Transformation Rotation Angle

float red, green, blue; // Our rgb values

void setup() { 
  size(800, 800); // sets our size
  background(0); // sets black background
  // sets our angle and our RGB to yellow for fill of the star
  angle = 0;
  red = 255;
  green = 255;
  blue = 0;
  x = 0;
  y = 0;
}

void draw() {
  fill(red, green, blue); // Updates our star colors every update
  stroke(0);
  if (mousePressed) { // While the mouse is pressed, do circle loops
    pushMatrix(); // matrix transformation start
    translate(x, y); // translates it to our mouseX and mouseY when we click
    rotate(radians(angle)); // rotates our frame
    star(0,0); // draws our star at the location of the mouse press
    popMatrix();
    angle++; // updates our angle for rotation
  } else {
    angle = 0;
  }
}

// Creates star shape for the art
void star(int x, int y) {
  beginShape();
  vertex(x, y);
  vertex(x + 40, y);
  vertex(x + 55, y - 40);
  vertex(x + 70, y);
  vertex(x + 110, y);
  vertex(x + 80, y + 40);
  vertex(x + 90, y + 70);
  vertex(x + 55, y + 50);
  vertex(x + 20, y + 70);
  vertex(x + 30, y + 40);
  vertex(x, y);
  endShape();
}

void mousePressed() { // Places a single star
    x = mouseX;
    y = mouseY;
}


void keyPressed() {
 if (key == 'r') { // Changes the red value of the RGB
   if (red > 255) { // loops back around if r > 255
      red = 0; 
   } else {
      red++; 
   }
 }
 
 if (key == 'g') {
   if (green > 255) {// Changes the green value of the RGB
      green = 0; // loops back around if g > 255
   } else {
      green++; 
   }
 }
  
 if (key == 'b') {
   if (blue > 255) {// Changes the blue value of the RGB
      blue = 0; // loops back around if b > 255
   } else {
      blue++; 
   }
 }
 
 if (key == 'q') { // clears the background
    background(0); 
 }
}
