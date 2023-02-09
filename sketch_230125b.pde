float baseH = 60;
float armL1 = 80;
float armW2 = 40;
float handH = 40;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float angle4 = 0;
float dif = 0.3;
int  angleDirection2 = 1;
int  angleDirection3 = 1;
int  angleDirection4 = 1;
float r =400;
float theta = PI/4;
float phi = PI/4;


void setup(){
size(1000,1000,P3D);
noStroke();
}

void draw(){
float cameraX = r*sin(theta)*cos(phi);
float cameraY = r*sin(theta)*sin(phi);
float cameraZ = r*cos(phi);
camera(cameraX, cameraY, cameraZ, 0, 0, 0, 0, 0, -1);

if(keyPressed){
  if(key=='z'){
    r = r + dif;
  }
 if(key=='Z'){
    r = r - dif;
  }
 if(key=='x'){
    theta = theta + PI*dif/180;
  }
 if(key=='X'){
    theta = theta - PI*dif/180;
}
 if(key=='v'){
    phi = phi + PI*dif/180;
  }
 if(key=='V'){
    phi = phi - PI*dif/180;
}

}

  background(255);

if(keyPressed){
    if(key == 'b'){
      angle1 = angle1  -dif;
    }
    if(key == 'B'){
      angle1 = angle1  -dif;
    }
    if(key == 's'){
      angle2 = angle2 + dif*angleDirection2;
    }
    if(key == 'S'){
      angle2 = angle2 - dif*angleDirection2;
    }
   
    if((angle2<-90)||(angle2>90)){
      angleDirection2 = - angleDirection2;
    }
    if(key == 'a'){
      angle3 = angle3 + 5*dif*angleDirection3;
    }
    if(key == 'A'){
      angle3 = angle3 - 5*dif*angleDirection3;
    }
      if(key == 'c'){
      angle4 = angle4 + dif*angleDirection4;
    }
    if(key == 'C'){
      angle4 = angle4 - dif*angleDirection4;
    }
     if((angle3<-90)||(angle3>90)){
      angleDirection3 = - angleDirection3;
     }
      if((angle4<-22)||(angle4>0)){
      angleDirection4 = - angleDirection4;
   }
   
   }
   
//base
 rotateZ(radians(angle1));
 translate(0,0,baseH/2);
 fill(100);
 box(10,10,baseH);
 
//1st rink
 translate(0,0,baseH/2);
 rotateY(radians(angle2));
 translate(0,0,armL1/2-5);
 fill(70);
 box(10,10,armL1);
 
//rink2
 translate(0,0,armL1/2);
 rotateX(radians(angle3));
 translate(0,0,armW2/2-5);
 fill(0);
 box(10,10,armW2);
 
//hand
 translate(0,0,armW2/2+5);
 fill(175);
 box(10,handH,10);
 pushMatrix();
 translate(0,-handH/2,5);
 rotateX(radians(angle4));
 translate(0,5,15);
 box(10,10,30);

 popMatrix();
 translate(0,handH/2,5);
 rotateX(-radians(angle4));
 translate(0,-5,15);
 box(10,10,30);
 
if(keyPressed){
  
if(key=='r'){
  angle1 = 0;
  angle2 = 0;
  angle3 = 0;
  angle4 = 0;
}
}



}
