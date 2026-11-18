class Stagno {
    void disegnaStagno(int x, int y) {
        noStroke();
        fill(0, 102, 204);
        ellipse(x, y, width * 0.75, height * 0.50);
        ellipse(x - (width * 0.75) / 5, y + (height * 0.50) / 2, width * 0.50, height * 0.25);
        ellipse(x + (width * 0.75) / 6, y + (height * 0.50) / 1.75, width * 0.40, height * 0.35);
        ellipse(x + (width * 0.75) / 5, y - (height * 0.50) / 2, width * 0.35, height * 0.25);
        ellipse(x - (width * 0.75) / 4.5, y - (height * 0.50) / 2, width * 0.55, height * 0.25);
    }
}