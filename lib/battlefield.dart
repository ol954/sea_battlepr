import 'dart:math';

class Battlefield{
  int dimension=10;
  List<List<int>> cells=[];

  Battlefield() {
    notenabletoput() {
      for (int x = 0; x < dimension; x++) { //столбцы
        for (int y = 0; y < dimension; y++) { //строки
          if(cells[x][y]==1){
            int x1=x;
            int y1=y;
            if((x1==0) & (y1==0)){
              if(cells[x][y+1]!=1) cells[x][y+1]=2;
              if(cells[x+1][y]!=1) cells[x+1][y]=2;
              if(cells[x+1][y+1]!=1) cells[x+1][y+1]=2;
            }
            else if((x1==0) & (y1==9)){
              if(cells[x][y-1]!=1) cells[x][y-1]=2;
              if(cells[x+1][y]!=1) cells[x+1][y]=2;
              if(cells[x+1][y-1]!=1) cells[x+1][y-1]=2;
            }
            else if((x1==9) & (y1==0)){
              if(cells[x-1][y]!=1) cells[x-1][y]=2;
              if(cells[x][y+1]!=1) cells[x][y+1]=2;
              if(cells[x-1][y+1]!=1) cells[x-1][y+1]=2;
            }
            else if((x1==9) & (y1==9)){
              if(cells[x-1][y]!=1) cells[x-1][y]=2;
              if(cells[x][y-1]!=1) cells[x][y-1]=2;
              if(cells[x-1][y-1]!=1) cells[x-1][y-1]=2;
            }
            else if (x1==0){
              if(cells[x+1][y]!=1) cells[x+1][y]=2;
              if(cells[x+1][y+1]!=1) cells[x+1][y+1]=2;
              if(cells[x+1][y-1]!=1) cells[x+1][y-1]=2;
              if(cells[x][y+1]!=1) cells[x][y+1]=2;
              if(cells[x][y-1]!=1) cells[x][y-1]=2;
            }
            else if (y1==0){
              if(cells[x][y+1]!=1) cells[x][y+1]=2;
              if(cells[x+1][y+1]!=1) cells[x+1][y+1]=2;
              if(cells[x-1][y+1]!=1) cells[x-1][y+1]=2;
              if(cells[x+1][y]!=1) cells[x+1][y]=2;
              if(cells[x-1][y]!=1) cells[x-1][y]=2;
            }
            else if (x1==9){
              if(cells[x-1][y]!=1) cells[x-1][y]=2;
              if(cells[x-1][y+1]!=1) cells[x-1][y+1]=2;
              if(cells[x-1][y-1]!=1) cells[x-1][y-1]=2;
              if(cells[x][y+1]!=1) cells[x][y+1]=2;
              if(cells[x][y-1]!=1) cells[x][y-1]=2;
            }
            else if (y1==9){
              if(cells[x][y-1]!=1) cells[x][y-1]=2;
              if(cells[x+1][y-1]!=1) cells[x+1][y-1]=2;
              if(cells[x-1][y-1]!=1) cells[x-1][y-1]=2;
              if(cells[x+1][y]!=1) cells[x+1][y]=2;
              if(cells[x-1][y]!=1) cells[x-1][y]=2;
            }
            else{
              if(cells[x][y-1]!=1) cells[x][y-1]=2;
              if(cells[x][y+1]!=1) cells[x][y+1]=2;
              if(cells[x+1][y+1]!=1) cells[x+1][y+1]=2;
              if(cells[x+1][y-1]!=1) cells[x+1][y-1]=2;
              if(cells[x+1][y]!=1) cells[x+1][y]=2;
              if(cells[x-1][y]!=1) cells[x-1][y]=2;
              if(cells[x-1][y+1]!=1) cells[x-1][y+1]=2;
              if(cells[x-1][y-1]!=1) cells[x-1][y-1]=2;

            }
          }

        }
      }
    }

    for (int x = 0; x < dimension; x++) { //столбцы
      var rowCell = <int>[];

      for (int y = 0; y < dimension; y++) { //строки
        // if(y%3==0){
        //   rowCell.add(2);
        // }
        // else if(y%2==0){
        //   rowCell.add(1);
        // }
        // else{
        rowCell.add(0);
        //}
      }
      cells.add(rowCell);
    }
    Random random = Random();
//рандом четырехпалубника
    bool horizontalpos = random.nextBool();
    if (horizontalpos == true) {
      int rx = random.nextInt(10); //строка
      int ry = random.nextInt(7); //столбец
      cells[rx][ry] = 1;
      cells[rx][ry + 1] = 1;
      cells[rx][ry + 2] = 1;
      cells[rx][ry + 3] = 1;

    }
    else {
      int rx = random.nextInt(7);
      int ry = random.nextInt(10);
      cells[rx][ry] = 1;
      cells[rx + 1][ry] = 1;
      cells[rx + 2][ry] = 1;
      cells[rx + 3][ry] = 1;
    }
    notenabletoput();
  //рандом трехпалубников
    bool finerandom=false;
    horizontalpos = random.nextBool();
    if (horizontalpos == true) {
      while(finerandom!=true) {
        int rx = random.nextInt(10); //строка
        int ry = random.nextInt(8); //столбец
        if ((cells[rx][ry]==0)&(cells[rx][ry+1]==0)&(cells[rx][ry+2]==0)) {
          finerandom=true;
          cells[rx][ry] = 1;
          cells[rx][ry + 1] = 1;
          cells[rx][ry + 2] = 1;
        }
      }
    }
    else {
      while(finerandom!=true) {
        int rx = random.nextInt(8);
        int ry = random.nextInt(10);
        if ((cells[rx][ry] == 0) & (cells[rx + 1][ry] == 0) & (cells[rx + 2][ry] == 0)) {
          finerandom = true;
          cells[rx][ry] = 1;
          cells[rx + 1][ry] = 1;
          cells[rx + 2][ry] = 1;
        }
      }
    }
    notenabletoput();
    finerandom=false;
    horizontalpos = random.nextBool();
    if (horizontalpos == true) {
      while(finerandom!=true) {
        int rx = random.nextInt(10); //строка
        int ry = random.nextInt(8); //столбец
        if ((cells[rx][ry]==0)&(cells[rx][ry+1]==0)&(cells[rx][ry+2]==0)) {
          finerandom=true;
          cells[rx][ry] = 1;
          cells[rx][ry + 1] = 1;
          cells[rx][ry + 2] = 1;
        }
      }
    }
    else {
      while(finerandom!=true) {
        int rx = random.nextInt(8);
        int ry = random.nextInt(10);
        if ((cells[rx][ry] == 0) & (cells[rx + 1][ry] == 0) & (cells[rx + 2][ry] == 0)) {
          finerandom = true;
          cells[rx][ry] = 1;
          cells[rx + 1][ry] = 1;
          cells[rx + 2][ry] = 1;
        }
      }
    }
    notenabletoput();
    //рандом двухпалубников
    for (int i=0;i<3;i++) {
      finerandom = false;
      horizontalpos = random.nextBool();
      if (horizontalpos == true) {
        while (finerandom != true) {
          int rx = random.nextInt(10); //строка
          int ry = random.nextInt(9); //столбец
          if ((cells[rx][ry] == 0) & (cells[rx][ry + 1] == 0)) {
            finerandom = true;
            cells[rx][ry] = 1;
            cells[rx][ry + 1] = 1;
          }
        }
      }
      else {
        while (finerandom != true) {
          int rx = random.nextInt(9);
          int ry = random.nextInt(10);
          if ((cells[rx][ry] == 0) & (cells[rx + 1][ry] == 0)) {
            finerandom = true;
            cells[rx][ry] = 1;
            cells[rx + 1][ry] = 1;
          }
        }
      }
      notenabletoput();
    }
    //рандом однопалубников
    for (int i=0;i<4;i++) {
      finerandom = false;
        while (finerandom != true) {
          int rx = random.nextInt(10); //строка
          int ry = random.nextInt(10); //столбец
          if (cells[rx][ry] == 0) {
            finerandom = true;
            cells[rx][ry] = 1;
          }

      }

      notenabletoput();
    }
  }
}