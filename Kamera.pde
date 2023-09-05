
void Kamerakontrol()
{
  if (xt >= 720) xt = 360; //Denne del
  if (xt <= 0) xt = 360;
  Cz = sin(radians(xt))*(1500+Czoom);
  Cx = cos(radians(xt))*(1500+Czoom);
  camera(Cx, Cy, Cz, 0, 0, 0, 0, 1, 0);
  if (Up) Czoom = Czoom - 15;
  if (Down)  Czoom = Czoom + 15;
  if (Left) xt+=2;
  if (Right) xt-=2;
}

void keyPressed()
{
  setMove(keyCode, true); //Gør sådan at boolean setMove kan bruges med keycodes, når keyPressed er aktuel
}
void keyReleased() 
{
  setMove(keyCode, false); //Gør sådan at boolean setMove kan bruges med keycodes, når keyReleased er aktuel
}

boolean setMove(int k, boolean b) {
  switch (k) {
  case 'W':
    return Up = b;
  case 'S':
    return Down = b;
  case 'A':
    return Left = b;
  case 'D':
    return Right = b;
  default:
    return b;
  }
}
