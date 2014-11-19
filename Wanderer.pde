float velx, vely;      //declare velocity
float accx, accy;      //declare acceleration
float locx, locy;      //declare location

float sz = 50;         //size of ball

void setup(){
  colorMode(HSB, 360, 100, 100, 100);
  size(800,600);
  
  //initialize location variables
  locx = width/2;
  locy = height/2;
  
  //initialize velocity
  velx = 0;
  vely = 0;
  
  //initialize acceleration
  accx = random(-.1,.1);
  accy = random(-.1,.1);
}

void draw(){
  fill(frameCount%360, 100, 100, 100);
  stroke(frameCount%360, 100, 50);
  
  //add velocity to location
  locx += velx;
  locy += vely;
  
  //add aceleration to velocity
  velx += accx;
  vely += accy;
  
  //limit velocity to avoid going uncontrollably fast
  velx = constrain(velx, -5, 5);
  vely = constrain(vely, -5, 5);
  
  //draw ellipse
  ellipse(locx,locy,sz,sz);
  
  
  if (locx - sz/2 > width) {
     locx = -sz/2;
   }
 
   if (locx + sz/2 < 0) {
     locx = width + sz/2;
   }
 
  if (locy - sz/2 > height) {
    locy = -sz/2;
  }
   
  if (locy + sz/2 < 0) {
    locy = height + sz/2;
  }
}

void mousePressed(){
  accx = random(-.1,.1);
  accy = random(-.1,.1);
}
