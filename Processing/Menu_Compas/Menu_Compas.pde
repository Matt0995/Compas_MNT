PImage img;
float h;
float l;
float h2;
float m;
float j;
float menu;
float i;
String mode;
String jeu;
String instru;
String quitter;
void setup() {
  size(300, 240);
  img = loadImage("cible.jpg");
  mode = "menu";
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
  String i = "Instructions";
  
  if(mode = "jeu"){
      println(j);
}
    //rect(0,h,l,h2); 
    
 if(mode = "instru"){
      println(i);
}
     //rect(0,125,l,75);
    

 if(mode = "quitter"){
     println("Quitter");
    }
      //rect(200,210,100,30);
      
}

void mousePressed(){
  if(0<mouseX && l>mouseX && h<mouseY && m>mouseY)
      mode == "Jouer";
    
    
  if(0<mouseX && l>mouseX && 125<mouseY && 200>mouseY)
    mode == "Instru"; 
  
  
  if(200<mouseX && 300>mouseX && 210<mouseY && 240>mouseY)
    mode == "Quitter";

}
