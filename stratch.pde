

ArrayList< ball > balls;
float f = 40;
int f1 = Math.round(f);

 void setup() {

    size(700, 700);
    background(31, 29, 29);

    balls = new ArrayList<ball>();
}

void draw() {
    background(31, 29, 29);

    balls.clear();

    for(int i=0; i<700; i= i+f1){
        stroke(255, 255, 255);
        strokeWeight(0.1);
        line(0+i, 0, 0+i, 700);
        line(0, 0+i, 700, 0+i);
    }

    for(int j = 0; j<700; j= j+f1){
        for(int i = 0; i<700; i = i+f1){
            balls.add(new ball(i, j,mouseX,mouseY,f));

        }
    }

    for(ball b: balls){
        b.show();
    }
}
