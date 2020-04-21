import java.awt.AWTException;
import java.awt.Robot;
import java.awt.event.KeyEvent;
import java.awt.event.InputEvent;
import java.awt.Color;

int x = 400; // this should be the number of pixels from the left side of your screen to the middle of the bottom-right piano tile
int y = 600; // this should be the number of pixels from the top of your screen to the middle of the bottom-right piano tile

Robot robot;
 
void setup() {
  size(100, 100);
  background(0);
  textSize(32);
  
  //Let's get a Robot...
  try { 
    robot = new Robot();
  } catch (AWTException e) {
    e.printStackTrace();
    exit();
  }
  robot.mouseMove(400,500);
  
  delay(1000);
}

void keyPressed(){
  if( key == ' ' ){
    if(x == 1){
      x = 0;
    }else{
      x = 1;
    }
    fill(0);
    rect(0,0,100,100);
    text(x,50,50);
  }
}

//letter codes for a = 65 s = 85 d = 68 f =70

void draw(){
  java.awt.Color a = robot.getPixelColor(x,y);
  if(a.getRed() < 15){
    robot.mouseMove(400,600);
    robot.mousePress(InputEvent.BUTTON1_MASK);
    robot.mouseRelease(InputEvent.BUTTON1_MASK);
    text("XD",50,50);
    delay(10);
  }
  java.awt.Color s = robot.getPixelColor(x+100,y);
  if(s.getRed() < 15){
    robot.mouseMove(500,600);
    robot.mousePress(InputEvent.BUTTON1_MASK);
    robot.mouseRelease(InputEvent.BUTTON1_MASK);
    text("XD",50,50);
    delay(10);
  }
  java.awt.Color d = robot.getPixelColor(x+200,y);
  if(d.getRed() < 15){
    robot.mouseMove(600,600);
    robot.mousePress(InputEvent.BUTTON1_MASK);
    robot.mouseRelease(InputEvent.BUTTON1_MASK);
    text("XD",50,50);
    delay(10);
  }
  java.awt.Color f = robot.getPixelColor(x+300,y);
  if(f.getRed() < 15){
    robot.mouseMove(700,600);
    robot.mousePress(InputEvent.BUTTON1_MASK);
    robot.mouseRelease(InputEvent.BUTTON1_MASK);
    text("XD",50,50);
    delay(10);
  }
  text(d.getRed(),50,50);
}
