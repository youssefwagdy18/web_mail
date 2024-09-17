import 'package:flutter/material.dart';

 class ResponsiveSize {
   static adjustHeight(double size, BuildContext context){
     var height=MediaQuery.of(context).size.height*size;
     return height;
  }
   static adjustWidth(double size, BuildContext context){
     var width=MediaQuery.of(context).size.width*size;
     return width;
  }
   static adjustTextSize(double size, BuildContext context){
     var textSize =MediaQuery.of(context).size.aspectRatio*size;
     return textSize;
  }
}