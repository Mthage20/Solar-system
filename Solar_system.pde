//PushMatrix "skubber" en ny matrix ind i en matrixstack, hvilket i vores tilfælde vil sige, at når popMatrix sker så får vi et "nyt" koordinatsystem, som vi frit kan ændre på, og når popMatrix sker, så går vi tilbage til vores gamle/standard/globale koordinatsystem

PImage img, img2, img3, img4, img5, img6, img7, img8, img9, img10;

//Kamera variabler
float Cx;
float Cy = -300;
float Cz;
float xt = 180;
int Czoom;

float Time, Speed = 1;

float G=6.673*pow(10, -11); 

float SolenM = 1.989 * pow(10, 20); /* Massen af objekt 1 (Solen)*/
float MerkurM = 3.285 * pow(10, 13);
float VenusM = 4.867 * pow(10, 14);
float JordenM = 5.972 * pow(10, 14); 
float MarsM = 6.39 * pow(10, 13);
float JupiterM = 1.898 * pow(10, 17);
float SaturenM = 5.683 * pow(10, 16);
float UranusM = 8.681 * pow(10, 15);
float NeptunM = 1.024 * pow(10, 16);

PShape Sol;
PShape Merkur;
PShape Venus;
PShape Jord;
PShape Mars;
PShape Jupiter;
PShape Saturen;
PShape Uranus;
PShape Neptun;
PShape Space;

boolean Up, Down, Left, Right;

Merkur Planet1 = new Merkur();
Venus Planet2 = new Venus();
Jorden Planet3 = new Jorden();
Mars Planet4 = new Mars();
Jupiter Planet5 = new Jupiter();
Saturen Planet6 = new Saturen();
Uranus Planet7 = new Uranus();
Neptun Planet8 = new Neptun();

void setup()
{
  size(1200, 800, P3D);
  perspective(radians(90), float(width)/float(height), 10, 200000);
  colorMode(HSB);

  noStroke();
  img = loadImage("suntexture.jpg");
  Sol = createShape(SPHERE, 69.5510/2);
  Sol.setTexture(img);

  img2 = loadImage("Earthtexture.jpg");
  Jord = createShape(SPHERE, 25/2);
  Jord.setTexture(img2);

  img3 = loadImage("Space360.jpg");
  Space = createShape(SPHERE, 5000);
  Space.setTexture(img3);


  img4 = loadImage("Jupitertexture.jpg");
  Jupiter = createShape(SPHERE, 25/2);
  Jupiter.setTexture(img3);

  img5 = loadImage("Marstexture.jpg");
  Mars = createShape(SPHERE, 25/2);
  Mars.setTexture(img4);

  img6 = loadImage("Merkurtexture.jpg");
  Merkur = createShape(SPHERE, 25/2);
  Merkur.setTexture(img5);

  img7 = loadImage("Neptuntexture.jpg");
  Neptun = createShape(SPHERE, 25/2);
  Neptun.setTexture(img6);

  img8 = loadImage("Saturntexture.jpg");
  Saturen = createShape(SPHERE, 25/2);
  Saturen.setTexture(img7);

  img9 = loadImage("Uranustexture.jpg");
  Uranus = createShape(SPHERE, 25/2);
  Uranus.setTexture(img8);

  img10 = loadImage("Venustexture.jpg");
  Venus = createShape(SPHERE, 25/2);
  Venus.setTexture(img9);
}

void draw()
{
  background(128);
  Time+=Speed;
  Kamerakontrol();

  strokeWeight(1);
  stroke(50, 255, 255);
  //line(0, 0, -1500, 0, 0, 1500);
  //line(-1500, 0, 0, 1500, 0, 0);
  //line(0, -1500, 0, 0, 1500, 0);
  strokeWeight(1);

  pushMatrix();
  noStroke();
  shape(Space);
  popMatrix();

  pushMatrix();
  noStroke();
  shape(Sol);
  popMatrix();


  stroke(255, 0, 255);
  pushMatrix();
  Planet1.update();
  Planet2.update();
  Planet3.update();
  Planet4.update();
  Planet5.update();
  Planet6.update();
  Planet7.update();
  Planet8.update();
  popMatrix();
}

class Planeter {
}
