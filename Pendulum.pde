class Pendulum{
  float angularVelocity;
  float angle = -PI/2 + random(PI);
  float angularAcceleration;
  float g = 0.05;
  PVector pivotPos;
  float lineLength = random(50,150); 
  
  
  void move(){
   angularAcceleration = -g * sin(angle) / (lineLength / 10);
   angularVelocity+=angularAcceleration;
   angle += angularVelocity;
   angularVelocity*=0.995;
  }

}