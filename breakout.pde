void setup(){
  size(600,600);
}
float x = 20 ;//ball zahyou
float y = 150 ;
float dx = 1 ;//sokudo henka
float dy = 2 ;
int count = 3 ;//start no count
float a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,z=0; //brock sikibetu
int c_type=0; //COLOR_CHANGE no start

 //brock hit kansuu
float DELETE_BROCK(float x_brock, float y_brock){
  rect(x_brock, y_brock,50,30);  //brock sakusei
    if(x_brock<=x+5&&x+5<=x_brock+5&&y+5>=y_brock&&y_brock+30>=y-5){ //hidari hantei
      dx=-4;
      return 1;
    }else if(x_brock+45<=x-5&&x-5<=x_brock+50&&y+5>=y_brock&&y_brock+30>=y-5){ //migi hantei
      dx=4;
      return 1;
    }else if(y_brock<=y+5&&y+5<=y_brock+5&&x_brock<=x+5&&x-5<=x_brock+50){ //ue hantei
      dy=-4;
      return 1;
    }else if(y_brock+25<=y-5&&y-5<=y_brock+30&&x_brock<=x+5&&x-5<=x_brock+50){ // sita hantei
     dy=4;
     return 1;
     }else{ 
  return 0;
     }
     }  

// COLOR CHANGE

void COLOR_CHANGE(){
  c_type = c_type%7; //iro sikibetu hensuu
  
  switch(c_type) { //joukenduke
    case 0:
        //red
        fill(255,0,0);
        break;
    case 1:
        //yellow
        fill(255,255,0);
        break;
   case 2:
        //green
        fill(0,255,0);
        break;
    case 3:
        //lightblue
        fill(0,255,255);
        break;
    case 4:
        //blue
        fill(255,0,255);
        break;
    case 5:
       //purple
        fill(255,0,255);
        break;
    case 6:
        //orange
        fill(255,140,0);
        break;
    default:  //nanimonaitoki
      println("None");  
      break;
  }
  
    if(x+5 > width||x-5 < 0||y-5 < 0||(y >= 495 && y <= 500&&x >= mouseX-45 && x<= mouseX + 45)){  //kabe to bar ni atattatoki
      c_type = c_type + 1;
}
}

// ball kansuu
void ball(float x_ball,float y_ball){ //ball zahyou
  COLOR_CHANGE(); //kansuu yobidasi
  ellipse(x_ball,y_ball,10,10); //ball sakusei
}


void draw(){
  x = x + dx;  //brock ugoki
  y = y + dy;
 background(0,192,255);  //haikei
  //ball
  noStroke();  //wakusen nasi
  smooth();    //ball wo namerakani
  ball(x,y); //ball sakusei
  //bar
  fill(255);  
  rect(mouseX-40,500,80,3);
  
  // hit hantei sayuu
  if (x > width-5){  //migi
    dx = -dx;
  }else if(x < 5){  //hidari
    dx = -dx;
  }
  
  // hit hantei ue
  if( y < 5){
    dy = -dy;
  }
 
 // bar hit hantei 
  if(y >= 495 && y <= 500 ){
    if(x >= mouseX-45 && x<= mouseX-25){   //bar itibanhidari
      dx = -6;
      dy = -dy;
    }else if(x>= mouseX-25&&x<= mouseX-5){  //bar tyuuouhukin hidari
    dx = -3;
    dy = -dy;
    }else if(x>=mouseX-5&&x<=mouseX+5){   //bar tyuuou
    dx=0;
    dy=-dy; 
    }else if(x>=mouseX+5&&x<=mouseX+25){  //bar tyuuouhukin migi
    dx=3;
    dy=-dy;
 }else if(x>=mouseX+25&&x<=mouseX+45){    //bar itibanmigi
    dx=6;
    dy=-dy;
  }
  }

//brock hit
if(a==0)a=DELETE_BROCK(45,110);  //3danme
if(b==0)b=DELETE_BROCK(110,110);
if(c==0)c=DELETE_BROCK(175,110);
if(d==0)d=DELETE_BROCK(240,110);
if(e==0)e=DELETE_BROCK(305,110);  //hidarikkara jun
if(f==0)f=DELETE_BROCK(370,110);
if(g==0)g=DELETE_BROCK(435,110);
if(h==0)h=DELETE_BROCK(500,110);
if(i==0)i=DELETE_BROCK(45,70);   //2danme
if(j==0)j=DELETE_BROCK(110,70);
if(k==0)k=DELETE_BROCK(175,70);
if(l==0)l=DELETE_BROCK(240,70);
if(m==0)m=DELETE_BROCK(305,70);  //hidarikara jun
if(n==0)n=DELETE_BROCK(370,70);
if(o==0)o=DELETE_BROCK(435,70);
if(p==0)p=DELETE_BROCK(500,70);
if(q==0)q=DELETE_BROCK(45,30);   //1danme
if(r==0)r=DELETE_BROCK(110,30);
if(s==0)s=DELETE_BROCK(175,30);
if(t==0)t=DELETE_BROCK(240,30);
if(u==0)u=DELETE_BROCK(305,30);  //hidarikara jun
if(v==0)v=DELETE_BROCK(370,30);
if(w==0)w=DELETE_BROCK(435,30);
if(z==0)z=DELETE_BROCK(500,30);

//count and saisyutugen
 if(y+10>=height&&y+10<=height+10){  //ball rakka
   count = count - 1;                //zanki gensyou
   x=20;                             //ball syokiiti
   y=150;
   dx=2;                             //ball sokudo
   dy=4;
 }  
   
   textSize(20);                     // zanki hyouzi
    text(count,15,40);                

//GAME OVER and CLEAR
if(a==1&&b==1&&c==1&&d==1&&e==1&&f==1&&g==1&&h==1&&i==1&&j==1&&k==1&&l==1&&m==1&&n==1&&o==1&&p==1&&q==1&&r==1&&s==1&&t==1&&u==1&&v==1&&w==1&&z==1){ //subete no brock kietatoki
 background(255,140,0);
  textSize(100);  //"CLEAR" hyouzi
  fill(0,255,255);
  text("CLEAR",150,325);
}else if(count <= 0){ //zanki ga 0ninattatoki
background(0);
 textSize(50);  //"GAME OVER"hyouzi
  text("GAME OVER",150,300);
}

   }
