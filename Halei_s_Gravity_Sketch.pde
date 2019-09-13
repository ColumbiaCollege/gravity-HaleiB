//void setup(){
//  size (990,900);
//  background();
//  location = new PVector(200,100);
//  velocity = new PVector (1.5, 2.1);
//  gravity = new PVector (0,0.2);
  
//}

// Declares both variables for width and height
float x;
float y;

//Sets size of screen and values of variables x and y 
void setup() {
  size (700, 500);
 
 // I wasn't sure how to set the values as the top left corner of the screen 
 //except by subracting almost the total value of the width and height
  x = width + 699;
  y = height + 499;
}

void draw () {
  
  // sets background to black and circle to white
  background (0);
  stroke(255);
  fill(255);
  // Establishes the circle at x and y and 50 pixels in w and h
  ellipse(x, y, 50 ,50);
  // Sets increments at which I want the circle to move across the screen 
  y = y + 5;
  x = x + 7;
  //Two if statements for x and y that set it back to
  //its original position once it hits the edge
  if ( y > 500 ) {
    y = height - 499 ;
    //y = y ++ ;
  }
  if( x > 700) {
    x = width - 699;
    //x = x ++ ;
  }
}
  
  
