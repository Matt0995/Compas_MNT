PImage img;
float h;
float l;
float h2;
float m;
String mode;
String j = "Jouer !";
String i = "Instructions";


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
 
 if(mode == "menu") {
  size(300,240);
  background(0);
  image(img,0,0);
 }
 
  if(mode == "jeu"){
      println(j);
      background(255);
      // formes
      
      
      
      // score
      
      
      
}
    //rect(0,h,l,h2); 
    
 if(mode == "instru"){
      println(i);
      background(255);
}
     //rect(0,125,l,75);
    

 if(mode == "quitter"){
     println("Quitter");
     background(255);
     exit();
    }
      //rect(200,210,100,30);
      
}

void mousePressed(){
  if (mode == "menu"){
     if(0<mouseX && l>mouseX && h<mouseY && m>mouseY) {
       mode = "jeu";
     }
     
    if(0<mouseX && l>mouseX && 125<mouseY && 200>mouseY)
       mode = "instru"; 
  
  
  if(200<mouseX && 300>mouseX && 210<mouseY && 240>mouseY)
    mode = "quitter";
  }
}
