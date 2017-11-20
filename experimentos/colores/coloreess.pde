Increment Color1 = new Increment();
Increment Color2 = new Increment();
int flag = 0;

public class Increment{
  
  int incremento = 1;//incremento principal
  int li = 0;
  int index = 0;
  int Inc_index = 1;
  int a = 1;//Color base v1
  int b = 0;//Color base v2
  int c = 0;//Color base v3
  
  public Increment(){}
  
  public Increment(int a,int b, int c){
    
    this.a = a;
    this.b = b;
    this.c = c;
  }
  
  public void fullColor(int Select, int ls){
    
    boolean ok = false;
    
    if(a == ls){
      if(a == ls && incremento == -1 && b == li) a--;
      
      if(b == ls){
          if(b == ls && incremento == -1 && c == li) b--;
          
        if(c == ls) {
          incremento *= -1;
          c--;
          
        }else c += incremento;
  
      }else b += incremento;
      
    }else{

      if(a <= li)  incremento *= -1;
      a += incremento;
    }
   
    //Monitoreo de cambios
    println("a : " + a);
    println("b : " + b);
    println("c : " + c);
    
    noStroke();//Transparencia
    if(index == 255 || index == -1) Inc_index *= -1;
    
    switch(Select){
      
      case 1://Rojo predominante
        fill(a,b,c,index);
        break; 
        
      case 2://Rojo inicial con rosa
        fill(a,c,b,index);
        break;
        
      case 3:// Verde Predominante
        fill(b,a,c,index);
        break;
        
      case 4://Azul predominante con rosa
        fill(b,c,a,index);
        break;
        
      case 5://Azul predominante
        fill(c,b,a,index);
        break;
        
      case 6://Verde predominante "colores frios"
        fill(c,a,b,index);
        break;
        
      default:
        fill(a,b,c,index);
        break;
    }
    index += Inc_index;
  }
  
  
}

void setup(){
   frameRate(60);
   size(500,500);   
   background(0);
}

void draw(){
    
  fill(0,0,0,1);
  rect(0,0,500,500);

  Color1.fullColor(6,255);
  ellipse(random(500),random(500),30,30);
  
  Color2.fullColor(5,255);
  rect(random(500),random(500),10,10);


}
