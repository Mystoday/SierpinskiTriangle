public void setup()
{
size (500,350);
background(0,0,0);
stroke(250,250,250);
}
public void draw()
{
for (int i=0;i<600;i+=50){
sierpinski(i-100,347,200);
stroke(0,0,0);
flippedSierpinski(i-75,0,200);
stroke(0,0,0);
}
}
public void sierpinski(int x, int y, int len) 
{
if (len<=10){
triangle(x,y,x+len/2,y-len,x+len,y);
}
else{
sierpinski(x,y,len/2);
sierpinski(x+len/2,y,len/2);
sierpinski(x+len/4,y-len/2,len/2);
}
}
public void flippedSierpinski(int x, int y, int len) 
{
if (len<=10){
triangle(x,y,x+len/2,y+len,x+len,y);
}
else{
flippedSierpinski(x,y,len/2);
flippedSierpinski(x+len/2,y,len/2);
flippedSierpinski(x+len/4,y+len/2,len/2);
}
}
