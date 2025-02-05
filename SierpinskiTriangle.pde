void setup(){
size(400, 400);
background(120);

}

void draw(){
fill(0);
noStroke();
//triangle(100, 100, 150, 0, 200, 100);
triangle(100, 200, 200, 0, 300, 200);
//fill(255);
//sierpinski(100, 100, 100);
sierpinski(100, 200, 200);
}

boolean white = true;
float theBreak = 201;

void mousePressed(){
theBreak /= 2;
}


void sierpinski(float x, float y, float len){
fill(255);
triangle(x+len/2, y, x+len/4, y - len/2, x+len - len/4, y - len/2);



if(len >= theBreak){ 
  
  if(white == true){
white = false;
} else {
white = true;
}

sierpinski(x, y, len/2);
sierpinski(x + len/2, y, len/2);
sierpinski(x + len/4, y - len/2, len/2);

/*if(white == true){
white = false;
} else {
white = true;
}*/
}

}
