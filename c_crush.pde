int[][] Board;
PImage b,g,o,p,r,y;
//b0,g1,o2,p3,r4,y5
int X;
int Y;

void setup(){
  frameRate(10);
  selected = false;
  Board = new int[9][9];
  for (int i = 0; i<9; i++){
    for (int j = 0; j<9; j++){
      Board[i][j] = int(random(0,6));
    }
  }
  size(450,450);
  b = loadImage(".\\c crushh\\b.png");
  g = loadImage(".\\c crushh\\g.png");
  o = loadImage(".\\c crushh\\o.png");
  p = loadImage(".\\c crushh\\p.png");
  r = loadImage(".\\c crushh\\r.png");
  y = loadImage(".\\c crushh\\y.png");
  initialiser();
  //print(Board[0][0]);
}

void draw(){
  background(116,143,216,100);
  
  Draw();

  drawChars();
  if (selected){
    fill(255,255,255,50);
    rect(X*50,Y*50,50,50);
  }
  //println(selected);
  if (mousePressed){

    select();
  }
  Dvalid();
}
