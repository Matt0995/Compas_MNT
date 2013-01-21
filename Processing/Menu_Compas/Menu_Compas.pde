PImage img;
float h;
float l;
float h2;
float m;




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
  
  if(0<mouseX && 130>mouseX && 45<mouseY && m>mouseY)
    if(mousePressed){
      print("Jouer");}
    rect(0,h,l,h2); 
    
  //if(mousePressed){
    //rect(0,45,130,35);
    //println("Jouer");
}
  
  



