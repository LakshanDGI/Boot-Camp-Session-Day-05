PImage img;

void setup() {
  size(500, 500);
  img = loadImage("image.jpg");
  img.resize(width, height);
  background(0);
}
void draw () {
  color c;
  if (mouseButton == RIGHT) {
    c = color(0);
  } else {
    c = img.get(mouseX, mouseY);
  }
  float speed = dist(pmouseX, pmouseY, mouseX, mouseY);
  float size = map(speed, 0, 50, 5, 40);
  stroke(c);
  strokeWeight(20);
  //fill(c);
  line(pmouseX, pmouseY, mouseX, mouseY);
}

void keyPressed (){
 if(key == 'c' || key == 'C'){
  background(0); 
 }
 
 if (key == 's' || key == 'S'){
   save("file.png");
 }
}
