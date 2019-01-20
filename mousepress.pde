//particle ele = new particle(random(100,(width)/2),random(100,(height)/2),30,4,4,1);
//float x,y;
particle[] elec = new particle[20];
PrintWriter hist;
void setup(){
  float x=0,y=0;
  int i,j;
  //output = createWriter("coordinates.txt");
  size(600,600);
  
  for (int k = 0; k < elec.length; k++){
    x = random(10, width);
    y = random(10, height);
    elec[k] = new particle(x,y);
  }
  for ( i = 0; i < elec.length; i++){
    
   
   if (i!=0){
   
   for (  j = 0; j < elec.length; j ++){
   
   if (getdistance(x,y,elec[j].getX(),elec[j].getY()) < 30){
      x = random(10, width);
      y = random(10, width);
      j = -1;
   }
    //println(elec[j].getX(), elec[j].getY(), getdistance(x,y,elec[j].getX(),elec[j].getY()));
  }
  }
    elec[i] = new particle(x,y,15,random(4),random(4),1.0);
  }

  //hist = createWriter("co-ordinate.txt");
}
void draw(){
  background(0);
  for (int i = 0; i < elec.length; i++){
  elec[i].display();
  elec[i].move();

  elec[i].bounce();
  //println(getdistance(elec[1].getX(),elec[1].getY(),elec[2].getX(),elec[2].getY()));
  
  //hist.println(elec[i].getX() + "," + elec[i].getY());
  }
  //println(getdistance(elec[1].getX(),elec[1].getY(),elec[2].getX(),elec[2].getY()));
  
  

}

float getdistance(float x, float y, float x1, float y1){
    return pow(pow((x-x1),2)+pow((y-y1),2),0.5);
  }

  
  
  
  
  //println(ele.getX(),ele.getY());
  
  //ele.setDX(05);
  //ele.setDY(5);
  
  
