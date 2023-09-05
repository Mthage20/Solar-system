class Saturen
{
  float Vx0 = 0;
  float Vy0 = 967;
  float F, Fx, Fy, ax, ay, Vx, Vy, x, y;
  float y0 = 0;
  float x0 = 1.434*pow(10,4);
  float dt;
  float BalanceDistance = 5*pow(10,0);
  int c = int(300/Speed);
  int f = 1;
  float[] X = new float[c];
  float[] Y = new float[c];
  
  void update()
  {
    dt = pow(10,-2)*Speed;
    f++;
    if (f == c) f = 0;
    
    X[f] = x0;
    Y[f] = y0;
    
    F=G*SolenM*SaturenM/(pow(dist(0, 0, 0, x0, 0, y0), 2));
    Fx=F*(-x0/sqrt(x0*x0+y0*y0));
    Fy=F*(-y0/sqrt(x0*x0+y0*y0));

    ax=Fx/SaturenM;
    ay=Fy/SaturenM;

    Vx=ax*dt+Vx0;
    Vy=ay*dt+Vy0;

    x=Vx*dt+x0;
    y=Vy*dt+y0;
    
    for (int i=1; i<c; i++) line(-X[i]/BalanceDistance, 0, -Y[i]/BalanceDistance, -X[i-1]/BalanceDistance, 0, -Y[i-1]/BalanceDistance);
    
    Vx0=Vx;
    Vy0=Vy;

    x0=x;
    y0=y;
    
    pushMatrix();
    translate((-x/BalanceDistance), 0, (-y/BalanceDistance));
    rotateY(Time);
    shape(Saturen);
    popMatrix();
  }
}
