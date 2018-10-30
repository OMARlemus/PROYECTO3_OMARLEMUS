class pantalla {
  int p;
  pantalla() {
    this.p=0;
  }
  void pantallauno(){
video1.loop();
  image(video1,0,0,900,500);
textSize(80);
fill(255);
textSize(40);
textSize(20);
text("presiona espacio para iniciar",310,440);
beginShape();
endShape();

}
void pantallados(){
  pushMatrix();
  background(119, 0, 18);
    noStroke();
    rectMode(CENTER);
  
  uno.display();
  dos.display();
  tres.display();
  cinco.display();
  cuatro.display();
   //TEXTO

    
    rect(450, 10, 900, 43);
    fill(255);
    textSize(30);
    //textAlign(CENTER,CENTER);
    text("ELIGE UN PERSONAJE", 250, 28);
    textSize(15);
    text("THE COON J1[q] J2[a]", 40, 180);
    text("MYSTERION J1[e] J2[d]", 180, 345);
    text("MINT-BERRY-CRUNCH J1[w] J2[s]", 360, 180);
    text("TIM.VISION J1[t] J2[g]", 539, 345);
    text("THE HUMAN KITE J1[r] J2[f]", 670, 180);

    fill(0);
    textSize(20);
 

 
  
  popMatrix();
}
   void movieEvent(Movie video){
  video.read();
}
  //pantallatres
  void pantallatres(){


  strokeWeight(3);
    for (int i=0; i<height; i++){
    stroke(i,g,b);
    line(0,i,width,i);
    } 
      rectMode(CENTER);
      noStroke();

 
pushMatrix();
       video.loop();
  image(video,0,0,900,500);
   

   fill(10);
rect(450,505,950,350);
    //background(255);
    fill(255);
    textSize(30);
    //text(genert, 450, 250);

    fill(0, 255, 0);
    rect(770, 400, 150, 50, 50);
    fill(0);

   // text(numesc2, 650, 255);
    text(vidados, 700, 410);
    fill(0, 255, 0);
    rect(120, 400, 150, 50, 50);
    fill(0);
    text(vidauno, 60, 410);
 //ganador();
    textSize(20);
    fill(255);
    ciudad= loadImage("ciudad.png");
  image (ciudad,0,0);
    text("J1 ATACA CON (x)-J2 ATACA CON (m)", 230, 460);

  if (personaje==1){
  translate(0,200);
  uno.display();
  }
  else if (personaje ==2){
  translate(-350,200);
  tres.display();}
     
  else if (personaje == 3){
  translate(-133,40);
  dos.display();}
  
  else if (personaje == 4){
  translate(-647,200);
  cinco.display();}
  
  else if (personaje ==5){
  translate(-500,40);
  cuatro.display();
  }     
         
  if (vidauno<=0 || vidados<=0){
  p1.p=3;
  }
  popMatrix();
  
  pushMatrix();
  if (personajedos==1){
  translate(650,200);
  uno.display();
  }
  else if (personajedos ==2){
  translate(300,200);
  tres.display();}
  else if (personajedos == 3){
  translate(505,43);
  dos.display();}
  else if (personajedos == 4){
  translate(-5,200);
  cinco.display();}
  else if (personajedos ==5){
  translate(145,40);
  cuatro.display();
  }     
    
  popMatrix();
  }
  
void pantallafinal(){
 pushMatrix();
    translate(90,90);
  background(0);
   beginShape();
vertex(350,310);
bezierVertex(410,220,490,280,510,200);
vertex(499,202);
vertex(512,170);
bezierVertex(450,220,358,140,350,200);
vertex(350,200);
bezierVertex(342,140,250,220,188,170);
vertex(201,202);
vertex(190,200);
bezierVertex(210,280,290,220,350,310);
endShape();
  popMatrix();


 
  if (vidauno<=0){
  fill (229,198,229);
  textSize(30);
  //textAlign(CENTER);
  text ("GANA JUGADOR 2", 320,220);
  text ("precione i para reiniciar",280,250);
}
  
  if (vidados<=0){
  fill (229,198,229);
  textSize(30);
  //textAlign(CENTER);
  text ("GANA JUGADOR 1", 320,220);
  text ("precione i para reiniciar",270,250);
}
   
  
}
}