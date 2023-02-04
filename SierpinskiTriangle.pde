public void setup(){
  size(800, 600);
  fill(0);
  triangle(400, 0, 100, 600, 700, 600);
}
public void draw(){
  fill(255);
  sierpinski(250, 300, 600);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len){
  if(len<=20){
    //triangle(x, y, x+len, y, x+len/2, y+len);
  }
  else{
    triangle(x, y, x+ len/2, y, x+len/4, y+len/2);
    sierpinski(x-len/8, y+len/4, len/2);
    sierpinski(x+3*len/8, y+len/4, len/2);
    sierpinski(x+len/8, y-len/4, len/2);
  }
}
