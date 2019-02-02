particle[] elec = new particle[1000];

void setup(){
  
  float x=0,y=0;
  int i,j;
  int diam = 8;
  

  size(1080,600);
  
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

       if (dist(x,y,elec[j].getX(),elec[j].getY()) <= diam){
         x = random(width/10, width/1.2);
         y = random(height/10, height/1.2);
         j = -1;
       }
     }
  }
      
        elec[i] = new particle(x,y,diam,4,4,1);
   
  }

}
void draw(){
  background(255);
  
  for (int i = 0; i < elec.length; i++){
    elec[i].update(elec);
    elec[i].move();
    elec[i].bounce();
   
  }
  
}


  


  
