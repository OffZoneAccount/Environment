class FiloErba {
    void disegnaFiloErba(float baseX, float baseY, float altezza, float larghezzaBase, float piega) {
        noStroke();
        fill(105, 145, 70);

        float metaLarghezza = larghezzaBase / 2.0;
        float puntaX = baseX + piega;
        float puntaY = baseY - altezza;

        beginShape();
        vertex(baseX - metaLarghezza, baseY);
        bezierVertex(
            baseX - metaLarghezza, baseY - altezza * 0.4,
            baseX + piega * 0.4 - 2, baseY - altezza * 0.75,
            puntaX, puntaY    
        );
        bezierVertex(
            baseX + piega * 0.4 + 2, baseY - altezza * 0.75,
            baseX + metaLarghezza, baseY - altezza * 0.4,
            baseX + metaLarghezza, baseY
        );
        endShape(CLOSE);
        }
}
