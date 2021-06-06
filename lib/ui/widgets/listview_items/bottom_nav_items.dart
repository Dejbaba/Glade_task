

import 'package:flutter/material.dart';
import 'package:glade_task/core/constants/app_constants.dart';
import 'package:glade_task/ui/shared/colors.dart';

userBottomTabItems(BuildContext context){
  return [
    new BottomNavigationBarItem(
      backgroundColor: Colors.white,
      activeIcon: Image.asset(
        'assets/images/first/home.png',
        height: 20,
        color: astronautBlue,
      ),
      icon: Image.asset(
        'assets/images/first/home.png',
        //color: scarletRed,
        height: 20,
        color: astronautBlue.withOpacity(0.4),
      ),
      label: "Home",
      /*title: new Text('Home',style: TextStyle(color: _currentIndex == 0 ? scarletRed : sharkGrey, fontFamily: 'GoogleSans', fontWeight: FontWeight.bold, fontSize: width(context) / 38),
          textAlign: TextAlign.center,
        ),*/
    ),
    new BottomNavigationBarItem(
      activeIcon: Image.asset(
        'assets/images/first/send_money.png',
        height: 20,
        color: astronautBlue,
      ),
      icon: Image.asset(
        'assets/images/first/send_money.png',
        //color: scarletRed,
        height: 20,
        color: astronautBlue.withOpacity(0.6),
      ),
      label: "Send Money",
      /* title: new Text('Appointments',style: TextStyle(color: _currentIndex == 1 ? scarletRed : sharkGrey, fontFamily: 'GoogleSans', fontWeight: FontWeight.bold, fontSize: width(context) / 38 ),
          textAlign: TextAlign.center,
        ),*/),
    new BottomNavigationBarItem(
      activeIcon: Image.asset(
        'assets/images/first/cards.png',
        height: 20,
        color: astronautBlue,
      ),
      icon: Image.asset(
        'assets/images/first/cards.png',
        //color: scarletRed,
        height: 20,
        color: astronautBlue.withOpacity(0.2),
      ),
      label: "Cards",
      /*title: new Text('Matches',style: TextStyle(color: _currentIndex == 2 ? scarletRed : sharkGrey, fontFamily: 'GoogleSans', fontWeight: FontWeight.bold, fontSize: width(context) / 38  ),
          textAlign: TextAlign.center,
        ),*/),
    new BottomNavigationBarItem(
      activeIcon: Image.asset(
        'assets/images/first/more.png',
        height: 20,
        color: astronautBlue,
      ),

      icon: Image.asset(
        'assets/images/first/more.png',
        height: 20,
        color: astronautBlue.withOpacity(0.4),
        //color: scarletRed,
      ),
      label: "More",
      /*title: new Text('Messages',style: TextStyle(color: _currentIndex == 3 ? scarletRed : sharkGrey, fontFamily: 'GoogleSans', fontWeight: FontWeight.bold, fontSize: width(context) / 38 ),
          textAlign: TextAlign.center,

        ),*/),
  ];
}