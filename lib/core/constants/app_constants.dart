import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RoutePaths {
  static const String cryptoCurrency = '/cryptoCurrency';

}

//MediaQuery Width
double width(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

//MediaQuery Height
double height(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

//get the shortest Side of the target device
double shortestSide(BuildContext context){
  return MediaQuery.of(context).size.shortestSide;
}

//check the type of target device
bool isMobileLayout(BuildContext context){
  return shortestSide(context) < 600;
}

//aspect ratio
double aspectRatio(BuildContext context){

  final double itemHeight = (height(context) - kToolbarHeight - 24) / 2;
  final double itemWidth = width(context) / 2;

  double aspectRatio = (itemWidth / itemHeight);

  return aspectRatio;
}


