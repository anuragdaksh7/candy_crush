void Draw(){
  stroke(89,114,180,80);
  strokeWeight(5);
  
  for (int i = 0; i<10; i+=1){
    line(i*50,0,i*50,450);
    line(0,i*50,450,i*50);
  }
}

void drawChars(){
  for (int i = 0; i<9; i++){
    for (int j = 0; j<9; j++){
      if (Board[i][j] == 0){
        image(b,i*50+2,j*50+2,50-4,50-4);
      }
      if (Board[i][j] == 1){
        image(g,i*50+2,j*50+2,50-4,50-4);
      }
      if (Board[i][j] == 2){
        image(o,i*50+2,j*50+2,50-4,50-4);
      }
      if (Board[i][j] == 3){
        image(p,i*50+2,j*50+2,50-4,50-4);
      }
      if (Board[i][j] == 4){
        image(r,i*50+2,j*50+2,50-4,50-4);
      }
      if (Board[i][j] == 5){
        image(y,i*50+2,j*50+2,50-4,50-4);
      }
    }
  }
}
