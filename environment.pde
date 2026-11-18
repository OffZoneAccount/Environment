int xStagno;
int yStagno;
Stagno s;

void setup() {
    size(1000, 1000);
    background(102, 180, 0);
  
    xStagno = width / 2;
    yStagno = height / 2;

    s = new Stagno();
}

void draw() {
    s.disegnaStagno(xStagno, yStagno);
}