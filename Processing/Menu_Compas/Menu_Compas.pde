PImage img;
float h;
float l;
float h2;
float m;
float j;
float menu;


void setup() {
  size(300, 240);
  img = loadImage("cible.jpg");
  h = 45;
  l = 130;
  h2 = 35;
  m = h+h2;
  
}
void draw() {
  
  size(300,240);
  background(0);
  image(img,0,0);
  String j = "Jouer !";
  
  
  if(0<mouseX && l>mouseX && h<mouseY && h+h2>mouseY)
    if(mousePressed){
      println(j);
}
    rect(0,h,l,h2); 
    
 
}
  
  



