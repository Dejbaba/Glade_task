import 'package:flutter/material.dart';
import 'package:glade_task/ui/views/home.dart';
import 'package:glade_task/ui/views/home2.dart';

import 'base_model.dart';

class BottomNavProvider extends BaseModel{

  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  int _secondCurrentIndex = 0;
  int get secondCurrentIndex => _secondCurrentIndex;

  List<Widget>  _children = [
    Home(),
    Container(),
    Container(),
    Container()
  ];

  List<Widget> get children => _children;

  List<Widget>  _children2 = [
    Home2(),
    Container(),
    Container(),
    Container(),
    Container()
  ];

  List<Widget> get children2 => _children2;


  updateIndex(int index){
    _currentIndex = index;
    notifyListeners();
  }

  updateSecondIndex(int index){
    _secondCurrentIndex = index;
    notifyListeners();
  }


}