class ball {

  float x;
  float y;
  float r;
  float mx;
  float my;
  float f;

    ball (float x_, float y_,float mx_,float my_,float f_) {
        x = x_;
        y = y_;
        f = f_;
        mx = mx_;
        my = my_; 

        double a = Math.pow(mx-x,2);
        double b = Math.pow(my-y,2);
        double c = Math.sqrt(a+b);

        double d = (c * 100)/989;
        double e = (d*f*3)/100;

        r = (float) e;

        //println(mx+";"+my);  
        //r = (((((Math.abs((y-my)+(x-mx)))/2)*100)/700) * f*1.5)/100;
        //println("(" + x +","+ y + ")" + "=" + r);
    }

    void show() {
    stroke(0);
    fill(255, 255, 255);
    ellipse(x+f/2, y+f/2, 2*r, 2*r);
  }

}
