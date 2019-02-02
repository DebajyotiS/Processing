particle elec1 = new particle(7.5,10,20,random(2,4),0,1);
particle elec2 = new particle(292.5,10,20,random(-4,-2),0,1);
particle elec[] = {elec1, elec2};

PrintWriter hist1;
PrintWriter hist2;
boolean record = false;


void settings(){
  int size = 50;
  size(500,size);
}


void setup(){
  hist1 = createWriter("co-ordinate1.txt");
  hist2 = createWriter("co-ordinate2.txt");

}


void draw(){
  background(255);
  
  for (int i = 0; i < elec.length; i++){
    elec[i].update(elec);
    elec[i].move();
    elec[i].bounce();
    if(record){
      saveFrame("collide_#####.eps");
      fill(255,0,0);
    } else {
      fill(0,255,0);
    }
  
    ellipse(width/1.01, height,5,5);
    
  }
  
    //hist1.println(elec1.getX() +","+ elec1.getDX() );
    //hist2.println(elec2.getX() +","+ elec2.getDX() );
  
}
      





  


  
