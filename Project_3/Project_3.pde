PImage img;
PImage sorted;
ArrayList<Pix> pix;
float scaler = 2; 

void setup() {
  size(640,500, P2D); 
  
  //img = loadImage("sun.jpg");
  img = loadImage("bh.jpg");
  
  sorted = createImage(img.width, img.height, RGB);
  sorted = img.get();
  sorted.loadPixels();
  pix = new ArrayList<Pix>();

  for (int x = 0; x < sorted.width; x += scaler) {
    for (int y = 0; y < sorted.height; y += scaler) {
      int pos = x + y * (sorted.width);
      
      pix.add(new Pix(x, y, sorted.pixels[pos]));
   }
  }
}

void draw() { 
  println(frameRate);
  background(25, 0, 0);
  
  for (Pix pix : pix) {
    pix.run();
  }
}
