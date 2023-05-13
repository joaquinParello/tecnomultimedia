PImage martilloespecial;
PImage martillocarpintero;
PImage martillobola; 
float veltext = 1;
int pantalla = 0;
int contador = 0;
color colordefondo = 240;
float posy = 200;
float posx = 200;
float x = 55;
float velocidad = 2;
float x1 = 50;
float y2 = 55;
float y = 55;
int direccion = 1;
float texto1 = 600;
float texto2 = 0;
boolean boton = false;
int posxbot = 310;
int posybot = 210;
int tambot = 200;
float texto3 = 300;
float x3 = 40;
float x4 = 30; 
float texto4 = 200;
float texto5 = 0;
float texto6 = 500;
float y3 = 0;

void setup() {
size(640,480);
textSize(37);
martillobola = loadImage("Martillo de bola.jpg");
martillocarpintero = loadImage("martillo de carpintero.jpg");
martilloespecial= loadImage("martillo especial.jpg");
}


void mouseMoved() {
  if (mouseX > posxbot && mouseX < posxbot + tambot
    && mouseY > posybot && mouseY < posybot+ tambot) {
      boton = true;
    }}      


void mouseClicked() {
  if (boton == true) {
      pantalla = 0;  
  }    
}


void draw() {
  background(colordefondo);
  switch (pantalla) {
 
    case 0:
     image(martillobola ,-180,-265);
     colordefondo = 240;
   contador++;
   println("Progreso ", contador);
    if (contador >= 400) {
      contador = 0;
      pantalla = 1; 
}
    fill(0,0,contador);
    text("MARTILLO DE BOLA",0,frameCount*5);
    if (frameCount  > width)
    frameCount = -frameCount;
     
      if (contador >= 100)

    text("El martillo de bola se utiliza para ",x4/3,texto4);
         x4 += velocidad / direccion;
        if(x4 < width - x4) {  
  direccion = -direccion;
  }
  if(x4< texto4){
    direccion = -direccion;  }
       
if (contador >= 100)
    text("tratar metal y para remachar",x3/3,texto3);
    x3 += velocidad / direccion;
  if(x3 < width - x3) {  
  direccion = -direccion;
  }
  if(x3< texto3 ){
    direccion = -direccion;  }
    
  
    
    veltext = frameCount;

    break;
   
    case 1:
    colordefondo = 255;
    image(martillocarpintero,-40,0);
    contador++;
    println("Progreso 1", contador);
    if (contador >= 400) {
      contador = 0;
      pantalla = 2;
    }
  fill(10,0,contador);
 text("o para extraerlos ",texto2,posx,200);
texto2 += velocidad / direccion;
  if(texto2 > width - texto2) {  
  direccion = -direccion;
  }
  if(texto2 < posx ){
    direccion = -direccion;  }
  text("MARTILLO DE CARPINTERO",0,veltext);     
                  veltext = frameCount;
              if (posy >= width){
                veltext = -1;}
       text("sirve para realizar golpes en clavos",x1,y,100);
       x1 += velocidad / direccion;
  if(x1  < width - x1) {  
  direccion = -direccion;
  }
  if(x1 > y ){
    direccion = -direccion;
     }
     
  break;  
  
  case 2:
  image(martilloespecial,50,0);
   contador++;
    println("Progreso 2", contador);
 if (contador >= 400) {
      contador = 0;
      pantalla = 3;
 }
  
   fill(0,0,contador);  
   text("MARTILLO DE THOR",x,y);

 x += velocidad / direccion;
  if(x > width - x) {  
  direccion = -direccion;
  }
  if(x < y ){
    direccion = -direccion;  }
    text("posee habilidades como volar o invocar",texto2,texto5);
     texto5 += velocidad / direccion;
  if(texto5 > height - texto5) {  
  direccion = -direccion;
  }
  if(texto5 < texto2 ){
    direccion = -direccion;  }
    
    
    text("rayos",texto6,y3*2);
     y3 += velocidad * direccion;
  if(y3 > height ) {  
  direccion = -direccion;
  }
  if(y3 < texto6){
    direccion = -direccion;  }
 
 
 
    break;
   
    case 3:
    background(0);
    fill(200);
    text("Reiniciar",250,100);
    fill(255,0,0);
    ellipse(posxbot,posybot,tambot,tambot);
   
  }}
  
