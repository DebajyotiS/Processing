particle[] elec = new particle[3];
//PrintWriter hist;
boolean record = false;

void setup(){
  float x=0,y=0;
  int i,j;
  float diam = 30;

  size(300,300);
  
  //Initialising the particle objects
  for (int k = 0; k < elec.length; k++){
    x = random(width/10, width/1.2);
    y = random(height/10, height/1.2);
    elec[k] = new particle(x,y);
  }
  
  //Spawning at random places
  for ( i = 0; i < elec.length; i++){
 
   if (i!=0){
     
     for (  j = 0; j < elec.length; j ++){

       if (dist(x,y,elec[j].getX(),elec[j].getY()) < 2*diam){
         x = random(width/10, width/1.2);
         y = random(height/10, height/1.2);
         j = -1;
       }
     }
  }
    elec[i] = new particle(x,y,diam,random(-2,2),random(-2,2),1,1);
    
    
  }
  

}
void draw(){
  background(0);
  
  for (int i = 0; i < elec.length; i++){
    elec[i].update(elec);
    elec[i].move();
    elec[i].bounce();
    if(record){
      saveFrame("collide_#####.png");
      fill(255,0,0);
    } else {
      fill(0,255,0);
    }
    
    ellipse(width/1.01, height/1.01,3,3);
  }

}

void keyPressed(){
  if (key =='r' || key =='R'){
    record = !record;
  }
}

//float getdistance(float x, float y, float x1, float y1){
//  return pow(pow((x-x1),2)+pow((y-y1),2),0.5);
//}
  
