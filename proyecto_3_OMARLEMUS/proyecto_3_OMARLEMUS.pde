import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import processing.video.*;
import processing.sound.*;
Movie video;
Movie video1;
float x,y,a,c;
int pantalla;
int eleccion=0;
int jugador = 0;
int personaje =0;
int personajedos=0;
int turno =0;
int reinicio;
float vidauno, vidados;
float ataqueuno, ataquedos;
PImage thecoon,mysterion,mynt,tim,kyte;
PImage ciudad;
float r=0;
float g=0;
float b=0;
pantalla p1;
SoundFile file1;
Personaje uno;
Personaje dos;
Personaje tres;
Personaje cuatro;
Personaje cinco;

void setup (){
size (900,500);
x=width/2;
y=height/2;

  uno= new thecoon(200,200);
  dos= new mysterion (200,200);
  tres = new mynt (200,200);
  cuatro = new tim(200,200);
  cinco = new kyte (200,200);
    file1 = new SoundFile(this,"ORCH.mp3");
  p1= new pantalla();
    video= new Movie(this, "south1.mp4");
        video1= new Movie(this, "coon.mp4");
          file1.loop();
}

void movieEvent(Movie video){
  video.read();
}
void movieEvent1(Movie video1){
  video1.read();
}

void draw (){
  background (204, 132, 206);
 


  
  if (p1.p ==0){
  p1.pantallauno ();}
  
 if((key==' ')&&(p1.p==0)){
  p1.p = 1;
  }
  
  if (p1.p == 1){
  p1.pantallados(); 
  }
 
  if ((personaje != 0)&&(personajedos !=0)){
  p1.p = 2;
  }
  
  if (p1.p == 2){
  p1.pantallatres(); 
  }
 
  if (p1.p ==3){
  p1.pantallafinal();  
  if (keyPressed && (key=='i'))
  {
     p1.p=0;
     personaje=0;
     personajedos=0;
   }
  }
 }   
     

  void keyPressed(){
 pushMatrix();
 //thecoon
 if (p1.p ==1){
    if(key=='q'){
   personaje = 1;
   vidauno=100;
   ataqueuno=random (1,25);
  }
   //mysterion
 if(key=='w'){
    personaje =2;
    vidauno=100;
   ataqueuno=random (1,25);
  }
  //mynt
  if(key=='e'){
    personaje =3;
    vidauno=100;
   ataqueuno=random (1,25);
  }
  //tim
 if(key=='r'){
    personaje =4;
   vidauno=100;
   ataqueuno=random (1,25);
  }
  //kyte
 if(key=='t'){
    personaje =5;
    vidauno=100;
   ataqueuno=random (1,25);
  }
}
   if (p1.p ==1){
    if(key=='a'){
   personajedos= 1;
   vidados=100;
   ataquedos=random (1,25);
    }
    
  if (key=='s'){ 
    personajedos =2;
    vidados=100;
   ataquedos=random (1,25);
  }
  if (key =='d'){
    personajedos=3;
    vidados=100;
   ataquedos=random (1,25);
  }
 
  if (key =='f'){ 
    personajedos = 4;
    vidados=100;
   ataquedos=random (1,25);
  
  }
  if (key=='g'){
    personajedos = 5;
    vidados=100;
   ataquedos=random (1,25);
    }}
    popMatrix();
    
    pushMatrix();
    
    if ((turno ==0) && (p1.p ==2)){
      if (key=='x'){
      vidados = vidados-ataqueuno;
      println(vidados);
      turno =1;}}
      
  if ((turno ==1) && (p1.p ==2)){
    if (key=='m'){
      vidauno = vidauno-ataquedos;
      println(vidauno);
      turno =0;}}
      
    
 popMatrix();}