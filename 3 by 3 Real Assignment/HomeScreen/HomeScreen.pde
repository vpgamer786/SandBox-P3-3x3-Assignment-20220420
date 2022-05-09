//Global Variables
color black=0, resetWhite=255, pink=#FF00E6, brown=#BC6F2F;
color red=color(255, 0, 0), yellow=color(255, 255, 0);
Boolean turnOnYellow=false, turnOnPink=false, turnOnBrown=false;
float rectWidth, rectHeight, ptDiameter;
//Points are organized by row and actually ... hint-hint ... value
int numberOfPoints = 17;
float[] ptX = new float[numberOfPoints];
float[] ptY = new float[numberOfPoints];
int numberOfButtons = 4;
float[] buttonX = new float[numberOfButtons];
float[] buttonY = new float[numberOfButtons];
float[] buttonWidth = new float[numberOfButtons];
float[] buttonHeight = new float[numberOfButtons];
//
void setup() 
{
  size(1600, 900); //fullScreen(); //displayWidth, displayHeight
  displayOrientation();
  //
  //Population
  rectWidth = appWidth*1/3;
  rectHeight = appHeight*1/3;
  ptDiameter = appWidth*1/50;
  //
  ptX[1] = ptX[5] = ptX[9] = ptX[13] = appWidth*0/3;
  ptX[2] = ptX[6] = ptX[10] = ptX[14] = appWidth*1/3;
  ptX[3] = ptX[7] = ptX[11] = ptX[15] = appWidth*2/3;
  ptX[4] = ptX[8] = ptX[12] = ptX[16] = appWidth*3/3;
  //
  ptY[1] = ptY[2] = ptY[3] = ptY[4] = appHeight*0/3;
  ptY[5] = ptY[6] = ptY[7] = ptY[8] = appHeight*1/3;
  ptY[9] = ptY[10] = ptY[11] = ptY[12] = appHeight*2/3;
  ptY[13] = ptY[14] = ptY[15] = ptY[16] = appHeight*3/3;
  //
  buttonX[1] =appWidth*(1.0/9.0);
  buttonY[1] =appHeight*(1.0/9.0);
  buttonWidth[1] =appWidth*(1.0/3.0)*(1.0/2.0);
  buttonHeight[1] =appHeight*(1.0/3.0)*(1.0/3.0);
  //
  buttonX[2] =appWidth*(3.0/6.0);
  buttonY[2] =appHeight*(2.0/6.0);
  buttonWidth[2] =appWidth*(1.0/3.0)*(1.0/2.0);
  buttonHeight[2] =appHeight*(1.0/3.0)*(1.0/2.0);
  //
  buttonX[3] =appWidth*(11.0/15.0);
  buttonY[3] =appHeight*(13.0/15.0);
  buttonWidth[3] =appWidth*(1.0/3.0)*(1.0/5.0);
  buttonHeight[3] =appHeight*(1.0/3.0)*(1.0/5.0);
  //
  //Verifying Array Read-in
  print("\nX-values are: ");
  printArray(ptX);
  println("\nY-values are: ");
  printArray(ptY);
  println("\nButton Variables");
  printArray(buttonX);
  printArray(buttonY[2]);
  printArray(buttonWidth);
  printArray(buttonHeight);
}//End setup
//
void draw() {
  //Rectangles must be 3 by 3
  rect(ptX[1], ptY[1], rectWidth, rectHeight);
  //
  //Sequential Ordering of Code example
  if ( turnOnYellow==true ) fill(yellow);
  if ( turnOnPink==true ) fill(pink);
  if ( turnOnBrown==true ) fill(brown);
  rect(ptX[2], ptY[2], rectWidth, rectHeight);
  fill(resetWhite);
  //
  rect(ptX[3], ptY[3], rectWidth, rectHeight);
  rect(ptX[5], ptY[5], rectWidth, rectHeight);
  rect(ptX[6], ptY[6], rectWidth, rectHeight);
  rect(ptX[7], ptY[7], rectWidth, rectHeight);
  rect(ptX[9], ptY[9], rectWidth, rectHeight);
  rect(ptX[10], ptY[10], rectWidth, rectHeight);
  rect(ptX[11], ptY[11], rectWidth, rectHeight);
  //
  //Buttons
  if ( mouseX>=buttonX[1] && mouseX<=buttonX[1]+buttonWidth[1] && mouseY>=buttonY[1] && mouseY<=buttonY[1]+buttonHeight[1] ) {
    fill(yellow);
    rect( buttonX[1], buttonY[1], buttonWidth[1], buttonHeight[1] );
  } else {
    fill(black);
    rect( buttonX[1], buttonY[1], buttonWidth[1], buttonHeight[1] );
  }//End Button 1
  if ( mouseX>=buttonX[2] && mouseX<=buttonX[2]+buttonWidth[2] && mouseY>=buttonY[2] && mouseY<=buttonY[2]+buttonHeight[2] ) {
    fill(yellow);
    rect( buttonX[2], buttonY[2], buttonWidth[2], buttonHeight[2] );
  } else {
    fill(black);
    rect( buttonX[2], buttonY[2], buttonWidth[2], buttonHeight[2] );
  }
  if ( mouseX>=buttonX[3] && mouseX<=buttonX[3]+buttonWidth[3] && mouseY>=buttonY[3] && mouseY<=buttonY[3]+buttonHeight[3] ) {
    fill(yellow);
    rect( buttonX[3], buttonY[3], buttonWidth[3], buttonHeight[3] );
  } else {
    fill(black);
    rect( buttonX[3], buttonY[3], buttonWidth[3], buttonHeight[3] );
  }
  if ( mouseX>=ptX[3] && mouseX<=ptX[3]+rectWidth && mouseY>=ptY[3] && mouseY<=ptY[3]+rectHeight ) {
    fill(yellow);
    rect( ptX[3], ptY[3], rectWidth, rectHeight );
  } else {
    fill(black);
    rect( ptX[3], ptY[3], rectWidth, rectHeight );
  }
  fill(resetWhite);
  //
  fill(black);
  //Starting pts for rect() must be 1-9 & filled black
  ellipse(ptX[1], ptY[1], ptDiameter, ptDiameter);
  ellipse(ptX[2], ptY[2], ptDiameter, ptDiameter);
  ellipse(ptX[3], ptY[3], ptDiameter, ptDiameter);
  ellipse(ptX[5], ptY[5], ptDiameter, ptDiameter);
  ellipse(ptX[6], ptY[6], ptDiameter, ptDiameter);
  ellipse(ptX[7], ptY[7], ptDiameter, ptDiameter);
  ellipse(ptX[9], ptY[9], ptDiameter, ptDiameter);
  ellipse(ptX[10], ptY[10], ptDiameter, ptDiameter);
  ellipse(ptX[11], ptY[11], ptDiameter, ptDiameter);
  fill(resetWhite);
  //
  fill(red);
  //Points for all other ellipses must be red
  ellipse(ptX[4], ptY[4], ptDiameter, ptDiameter);
  ellipse(ptX[8], ptY[8], ptDiameter, ptDiameter);
  ellipse(ptX[12], ptY[12], ptDiameter, ptDiameter);
  ellipse(ptX[13], ptY[13], ptDiameter, ptDiameter);
  ellipse(ptX[14], ptY[14], ptDiameter, ptDiameter);
  ellipse(ptX[15], ptY[15], ptDiameter, ptDiameter);
  ellipse(ptX[16], ptY[16], ptDiameter, ptDiameter);
  fill(resetWhite);
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  if ( mouseX>=buttonX[1] && mouseX<=buttonX[1]+buttonWidth[1] && mouseY>=buttonY[1] && mouseY<=buttonY[1]+buttonHeight[1] ) {
    println("BTN 1 Activated");
    turnOnYellow=true;
  }
  if ( mouseX>=buttonX[2] && mouseX<=buttonX[2]+buttonWidth[2] && mouseY>=buttonY[2] && mouseY<=buttonY[2]+buttonHeight[2] ) {
    println("BTN 2 Activated");
    turnOnPink=true;
  }
  if ( mouseX>=buttonX[3] && mouseX<=buttonX[3]+buttonWidth[3] && mouseY>=buttonY[3] && mouseY<=buttonY[3]+buttonHeight[3] ) {
    println("BTN 3 Activated");
    turnOnBrown=true;
  }
  //
  //Button: reset to beginning
  if ( mouseX>=ptX[3] && mouseX<=ptX[3]+rectWidth && mouseY>=ptY[3] && mouseY<=ptY[3]+rectHeight ) {
    println("BTN 4 Activated");
    turnOnYellow=false;
    turnOnPink=false;
    turnOnBrown=false;
  }
  //
}//End mousePressed
//
//End MAIN Program
