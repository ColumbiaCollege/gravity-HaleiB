//Radius of the bubbles (b for big)
int rad = 120;       
int brad = 200;

//Variables for x,y positions of bubbles
float xpos, ypos;  
float bxpos, bypos;

//Speed of bubbles (pixel per frame?)
float xspeed = 1;  
float yspeed = 1;  
float bxspeed = 2;
float byspeed = 2;

// I know this affects the directin the bubble sare moving, 
//but I'm confused as to how it relates to speed??
int xdirection = -3;
int ydirection = 1;  
int bxdirection = 2;
int bydirection = 1;

//Tried to mess with text font but couldnt figure it out in time
//PFont myFont; 

void setup() 
{
  size(900, 900);
  frameRate(30);
  
 // myFont = createFont(Bahnschrift-110, 110);
  
  //makes it so that the ellipse function takes the radius of the bubbles
  //instead of diameter
  ellipseMode(RADIUS);
  
  //sets the starting position of the bubbles
  xpos = width/5;
  ypos = height/5;
  
  bxpos = width/2;
  bypos = height/2;
}

void draw() 
{
  background(#98DFFF);
  fill(#9C3FFA);
  
  //textFont(myFont);
  
  //makes text centered and purple and displays "Bubbles!"
  textSize(100);
  textAlign(CENTER, CENTER);
  text("Bubbles!",width/2,height/3);
  
  //Updates the position of the bubbles in movement
  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  
  bxpos = bxpos + ( bxspeed * bxdirection );
  bypos = bypos + ( byspeed * bydirection );
  
//If the center of the bubble is past the length of the raius to the edge on 
//either side, then the bubble reverses direction
  if (xpos > width-rad || xpos < rad) {
    xdirection *= -1;
  }
  
  //Same business but about the height
  if (ypos > height-rad || ypos < rad) {
    ydirection *= -1;
  }
  
    if (bxpos > width-brad || bxpos < brad) {
    bxdirection *= -1;
  }
  if (bypos > height-brad || bypos < brad) {
    bydirection *= -1;
  }
  
//colors the stroke and weight and draws both the bubbles
//additional int in fill function sets % of opaqueness of the color
  strokeWeight(4);
  stroke(200,152,255,90);
  fill(175,255,241,50);
  
  ellipse(xpos, ypos, rad, rad);
  ellipse (bxpos, bypos, brad, brad);
}
