import processing.core.PApplet;
import java.util.Random;

 int[] randomArray = new int[10];
    Random random = new Random();
    int width = 1000;
    int height = 1000;
    public void settings() {
        size(width, height);
        for(int i=0;i<randomArray.length;i++){
            randomArray[i] = random.nextInt(200);
        }
    }

    public void draw(){
        background(64);
        ellipse(mouseX, mouseY, 20, 20);
        for(int i = 0; i<randomArray.length;i++){
            int element = randomArray[i];
            stroke(0);
            fill(randomArray[i]);
            rect(i * width/200, height - 100, width/200, element);
        }
    }
