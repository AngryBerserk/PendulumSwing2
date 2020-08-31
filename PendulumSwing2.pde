ArrayList<Pendulum> pens = new ArrayList<Pendulum>(); 

void setup(){
 size(800,600); 
 Pendulum p = new Pendulum();
 p.pivotPos = new PVector(width/2, height);
 pens.add(p);
 pens.add(new Pendulum());
 pens.add(new Pendulum());
 pens.add(new Pendulum());
}

void draw(){
 for (Pendulum p: pens)
  p.move();
 
 fill(255,15);
 rect(0,0,width,height);
 //Pivot
 ellipse(0,0,10,10);
 pushMatrix();
 
 for(int i=0; i< pens.size();i++){
   if (i == 0)
     translate(pens.get(0).pivotPos.x,100);
   else
     translate(0,pens.get(i-1).lineLength);
   rotate(pens.get(i).angle);
   line(0,0,0,pens.get(i).lineLength);
   fill(255);
   ellipse(0,pens.get(i).lineLength,32,32);
 }
 popMatrix();
}