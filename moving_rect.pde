float x;
float y;

void setup() {
  size(400, 400);
  fill(random(0, 255), random(0, 255), random(0, 255));
  x=100;
  y=100;
}

void draw() {
  background(255);
  rect(x, y, 100, 50);
}
void keyPressed() {
  if (key == 'w' || key == 'W' ) {
    y = y - 5;
  }
  if (key == 's' || key == 'S')
  {
    y = y + 5;
  }
  if (key == 'a' || key == 'A')
  {
    x = x - 5;
  }
  if (key == 'd' || key == 'D')
  {
    x = x + 5;
  }
}
