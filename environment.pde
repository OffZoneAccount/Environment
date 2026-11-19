int xStagno;
int yStagno;
Stagno s;

float t;
float countFiliErba;
float xFiloErba[];
float yFiloErba[];
float xFiloErbaTemp;
float yFiloErbaTemp;
FiloErba[] fe;

void setup() {
    size(1000, 1000);
    pixelDensity(1);
    background(102, 180, 0);
  
    xStagno = width / 2;
    yStagno = height / 2;
    s = new Stagno();
    s.disegnaStagno(xStagno, yStagno);
    loadPixels();

    xFiloErba = new float[21];
    yFiloErba = new float[21];
    fe = new FiloErba[21];
    countFiliErba = 0;
    while (countFiliErba < 21) {
        float xFiloErbaTemp = random(0, width);
        float yFiloErbaTemp = random(0, height);
        while (get(int(xFiloErbaTemp), int(yFiloErbaTemp)) != color(102, 180, 0)) {
            xFiloErbaTemp = random(0, width);
            yFiloErbaTemp = random(0, height);
        }
        xFiloErba[int(countFiliErba)] = xFiloErbaTemp;
        yFiloErba[int(countFiliErba)] = yFiloErbaTemp;
        fe[int(countFiliErba)] = new FiloErba();
        countFiliErba ++;
    }
}

void draw() {
    background(102, 180, 0);

    s.disegnaStagno(xStagno, yStagno);

    for (int x = 0; x < 21; x++) {
        float vento = map(noise(t), 0, 1, -10, 45);
        fe[x].disegnaFiloErba(xFiloErba[x], yFiloErba[x], 20, 5, vento);
    }
    t += 0.01;
}