int rad = 120;        // Width of the shape
int brad = 200;

float xpos, ypos;    // Starting position of shape 
float bxpos, bypos;

float xspeed = 1;  // Speed of the shape
float yspeed = 1;  // Speed of the shape
float bxspeed = 2;
float byspeed = 2;

int xdirection = -3;  // Left or Right
int ydirection = 1;  // Top to Bottom
int bxdirection = 1;
int bydirection = 2;

PFont myFont; 

void setup() 
{
  size(900, 900);
  frameRate(30);
  
  myFont = createFont("ArialRoundedMTBold-48", 100);
  
  
  ellipseMode(RADIUS);
  // Set the starting position of the shape
  xpos = width/5;
  ypos = height/5;
  
  bxpos = width/2;
  bypos = height/2;
}

void draw() 
{
  background(#98DFFF);
  fill(#9C3FFA);
  textFont(myFont);
  textSize(100);
  textAlign(CENTER, CENTER);
  text("Bubbles", 450,200);
  
  // Update the position of the shape
  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  
  bxpos = bxpos + ( bxspeed * bxdirection );
  bypos = bypos + ( byspeed * bydirection );
  
  // Test to see if the shape exceeds the boundaries of the screen
  // If it does, reverse its direction by multiplying by -1
  if (xpos > width-rad || xpos < rad) {
    xdirection *= -1;
  }
  if (ypos > height-rad || ypos < rad) {
    ydirection *= -1;
  }
  
    if (bxpos > width-brad || bxpos < brad) {
    bxdirection *= -1;
  }
  if (bypos > height-brad || bypos < brad) {
    bydirection *= -1;
  }
  

  // Draw the shape
  
   strokeWeight(4);
  stroke(200,152,255,90);
  fill(175,255,241,50);
  
  ellipse(xpos, ypos, rad, rad);
  ellipse (bxpos, bypos, brad, brad);
}
