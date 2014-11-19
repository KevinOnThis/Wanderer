PVector vel;           //declare velocity
PVector acc;           //declare acceleration
PVector loc;           //declare location

float sz = 50;         //size of ball

void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(800, 600);

  //initialize location
  loc = new PVector(width/2, height/2);

  //initialize velocity
  vel = new PVector(0, 0);

  //initialize acceleration
  acc = new PVector(random(-.1,.1), random(-.1,.1));
}

void draw() {
  fill(frameCount%360, 100, 100, 100);
  stroke(frameCount%360, 100, 50);

  //add velocity to location
  loc.add(vel);

  //add aceleration to velocity
  vel.add(acc);

  //limit velocity to avoid going uncontrollably fast
  vel.limit(5);

  //draw ellipse
  ellipse(loc.x, loc.y, sz, sz);


  if (loc.x - sz/2 > width) {
    loc.x = -sz/2;
  }

  if (loc.x + sz/2 < 0) {
    loc.x = width + sz/2;
  }

  if (loc.y - sz/2 > height) {
    loc.y = -sz/2;
  }

  if (loc.y + sz/2 < 0) {
    loc.y = height + sz/2;
  }
  acc.set(random(-.1,.1), random(-.1,.1));
}
