PImage img;
float h;
float l;
float h2;
float m;
String mode;
String j = "Jouer !";
String i = "Instructions";
float xr = random(300)+100;// x centre
float yr = random(300)+100;// y centre
float lf = random(250)+25;//largeur
float Lf = random(250)+25;//longueur
float c1 = random(250);//
float c2 = random(250);//couleurs
float c3 = random(250);//

  
int F;

void setup() {
  size(300, 240);
  img = loadImage("cible.jpg");
  mode = "menu";
  h = 45;
  l = 130;
  h2 = 35;
  m = h+h2;
  // formes
  
  F = (int)random(2);

 //score 
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
    background (250);
    
      
      
      // formes
      
      {
  
  noStroke();
  
  if (F==0){
    rectMode(CENTER);
  fill(c1,c2,c3);  
 rect(xr,yr,Lf,lf);
  }
  else if (F==1){
    fill(c1,c2,c3);
    ellipse(xr,yr,lf,lf);
  }   
}
      
  if (mousePressed){//curseur
    line(mouseX-5, mouseY, mouseX+5, mouseY);
    line(mouseX, mouseY-5, mouseX, mouseY+5);
  }
   if (mousePressed){//vrai centre
   stroke(0);
   line(xr-5, yr, xr+5, yr ) ;
   line(xr, yr-5, xr, yr+5 ) ;
  } 
  
  
      
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
