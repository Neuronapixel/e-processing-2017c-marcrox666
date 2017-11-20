void setup() {
  size(600,600);
  String[] lineas = loadStrings("miInfo.txt");
  println(lineas);
  for (int i = 0; i<lineas.length; i++) {
    String[] campos = split(lineas[i], ",");
    String nombre = campos[];
  String miColor = campos[1]:
  String miColor = campos[2]:
    textSize(32);
    text(nombre, 10, 22);
     switch(miColor){
       "morado"
       color elColor = color(255,0,255);
       
     }
     for(int j=0;j< int (numero); j++{
       rect(anchoLinea*j (i+1),w,h);
     }
     println(nombre);
    println(lineas[i]);
    println(campos);
  }
}
void draw() {
}