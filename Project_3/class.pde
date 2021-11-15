class Pix {
  PVector position, target;
color col;
float speed;
float pixSize;

 // PVector cross =position.cross(target);
  
  Pix(float x, float y, color c) {
    position = new PVector(x, y);
    target = new PVector((width), (height));
    col = c;
    float b = brightness(c) / 255;
    speed = b / 200;
    pixSize = abs(5 - (b * 10)) + 2;
  } 
  void update() {
    position.lerp(target, speed);
  position.rotate(-.40*(speed));
  } 
  void draw() {
    stroke(col);
    strokeWeight(pixSize);
    point(position.x, position.y);
  }
  void run() {
    update();
    draw();
  }
}
