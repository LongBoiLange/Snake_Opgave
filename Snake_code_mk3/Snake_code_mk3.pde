int cirkel= 40;
int[] XPos = new int [cirkel];
int[] YPos = new int [cirkel];

void setup(){
fullScreen();

for(int i=0; i<cirkel; i++){
XPos[i]=i*10;
YPos[i]=100;
  }
}

void draw(){
clear();
background(51);
frameRate(100);

for(int i=0; i<XPos.length; i++) {
circle(XPos[i],YPos[i],10);
fill(10,10,10);
  }
}

void keyPressed(){
if(key=='w')YPos[0]=YPos[0]-10;
if(key=='s')YPos[0]=YPos[0]+10; 
if(key=='a')XPos[0]=XPos[0]-10;
if(key=='d')XPos[0]=XPos[0]+10;

for(int i=XPos.length-1; i>0 ;i--){
XPos[i]=XPos[i-1];
YPos[i]=YPos[i-1];
}
}
