boolean valid(){
  int v = 0;
  
  for (int i = 0; i<=6; i++){
    for (int j = 0; j<9; j++){
      //println(i);
      if (Board[i][j] == Board[i+1][j] && Board[i+1][j] == Board[i+2][j]){
        v+=1;
      }
      if (Board[j][i] == Board[j][i+1] && Board[j][i+1] == Board[j][i+2]){
        v+=1;
      }
    }
  }
  if (v != 0){
    return true;
  }else{
    return false;
  }
}


void Dvalid(){
  //int v = 0;
  
  for (int i = 0; i<=6; i++){
    for (int j = 0; j<9; j++){
      //println(i);
      if (Board[i][j] == Board[i+1][j] && Board[i+1][j] == Board[i+2][j]){
        destruction(i,j);
        destruction(i+1,j);
        destruction(i+2,j);
        delay(120);
        drawChars();
      }
      if (Board[j][i] == Board[j][i+1] && Board[j][i+1] == Board[j][i+2]){
        destruction(j,i);
        destruction(j,i+1);
        destruction(j,i+2);
        delay(120);
        drawChars();
      }
    }
  }

}


void initialiser(){
  while ( valid() == true){
      destruction(int(random(0,9)),int(random(0,9)));
      drawChars();
    }
}


void destruction(int row, int column){
  int i = column;
  while (i > 0){
    Board[row][i] = Board[row][i-1];
    i--;
    //drawChars();
  }
  Board[row][0] = int(random(0,6));
  
}

boolean selected;
int X2,Y2;

int select(){
  if ( selected == false){
    X = mouseX;
    Y = mouseY;
    X = X/50;
    Y = Y/50;
    selected = true;
    //println(X,Y);
    return 0;
  }
  float dst;
  int tmp;
  if (selected == true){
    X2 = mouseX;
    Y2 = mouseY;

    X2 = X2/50;
    Y2 = Y2/50;
    //println(Board[Y][X],Board[Y2][X2]);
    dst = (pow( pow(X-X2,2) + pow(Y-Y2,2), 0.5));
    if (dst<=1.0){
      tmp = Board[X][Y];
      Board[X][Y] = Board[X2][Y2];
      Board[X2][Y2] = tmp;
      
    }
    drawChars();
    if (valid() == false && dst<=1.0){
      tmp = Board[X][Y];
      Board[X][Y] = Board[X2][Y2];
      Board[X2][Y2] = tmp;
    }
    selected = false;
    return 0;
  }
  return 0;
}
