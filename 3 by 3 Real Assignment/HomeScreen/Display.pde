int appWidth, appHeight;

void displayOrientation() {
  //Display Orientation: Landscape, not portrait nor square
  println (width, height, displayWidth, displayHeight);
  //Swap display key variable for testing 
  appWidth = width;
  appHeight = height;
  //with Strings, easier to print to console or canvas
  String ls="Landscape or Square", p="portrait", DO="Display Orientation:", instruct="Bru, turn your Phone";
  String orientation = ( appWidth >= appHeight ) ? ls : p ;
  println ( DO, orientation );
  //if ( orientation==p ) println(instruct);
  if (orientation==ls) {
    println("Good to Go");
  } else { //Break our app of not landscape
  println(instruct);
  appWidth*=0;
  appHeight*=0;
  }
  print("App Geometry is:", "\tApp Width:", appWidth, "\t\tApp Height:", appHeight);
}
