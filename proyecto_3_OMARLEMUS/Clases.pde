interface Personaje{
  void display();
}
/////////////////////////////////////////////////////////////////////////
class thecoon implements Personaje{
  float x;
  float y;
  thecoon (float x_, float y_){
    x=x_;
    y=y_;
}
void display() {
 
  thecoon= loadImage("thecoon.png");
  image (thecoon, 60, 50, 110, 107);
}
}

class mysterion implements Personaje{
  float x;
  float y;
  mysterion (float x_, float y_){
    x=x_;
    y=y_;
  }
  void display(){
  mysterion = loadImage("mysterion.png");
  image (mysterion, 220, 205, 83, 119);
      
     }
     }
     
class mynt implements Personaje{
float x;
float y;
mynt (float x_, float y_){
x=x_;
y=y_;
}
void display (){
mynt = loadImage("mynt.png");
  image (mynt, 430,50,86,103);
}}

class tim implements Personaje {
  float x;
  float y;
  tim (float x_, float y_){
    x=x_;
    y=y_;
  }
  void display (){
 tim = loadImage ("tim.png");
image (tim, 573, 205, 84, 125);
  }}
  
  class kyte implements Personaje {
    float x;
    float y;
 kyte (float x_, float y_){
      x=x_;
      y=y_;
    }
    void display (){
    tim = loadImage ("kyte.png");
 image (tim, 705, 45, 116, 120);
    }}
    