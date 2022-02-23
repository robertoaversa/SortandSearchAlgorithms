 import java.util.Random;
 
 int numberOfNumbers = 233;
    int[] values = new int[numberOfNumbers];
    int width = 1000;
    int height = 500;
    float deltaX = width/numberOfNumbers;
    Random random = new Random();
    int i = 0;
    public void settings() {
        size(width, height);
        for(int i = 0; i< values.length; i++){
            values[i] = random.nextInt(200);
        }
    }


    public void draw(){
        background(255);
        fill(50,205,50);//green
        int k;

        for(k = 0 ;k<i;k++){
            int element = values[k];
            rect(k * deltaX, height - element, deltaX, element);
        }
        fill(255,99,71);//red
        for(int j = k; j< values.length; j++){
            int element = values[j];
            rect(j * deltaX, height - element, deltaX, element);
        }

        int min = i;
        for(int j = i+1; j < values.length; j++){
            int element = values[j];
            int minElement = values[min];
            if(element < minElement){
               min = j;
            }
        }
        if(i< values.length){
            fill(51,102,0);//dark green
            rect(min * deltaX, height - values[min], deltaX, values[min]);
            exch(values, i, min);
            sleep();
            i++;
        }


    }

    private void sleep() {
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    private static void exch(int[] a, int i, int min){
        int t = a[i];
        a[i] = a[min];
        a[min] = t;
    }
