import 'package:flutter/material.dart';
import 'package:glade_task/ui/views/home.dart';

import 'base_model.dart';

class BottomNavProvider extends BaseModel{

  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  List<Widget>  _children = [
    Home(),
    Container(),
    Container(),
    Container()
  ];

  List<Widget> get children => _children;


  updateIndex(int index){
    _currentIndex = index;
    notifyListeners();
  }


}