

import 'package:flutter/material.dart';
import 'package:glade_task/core/constants/app_constants.dart';
import 'package:glade_task/ui/shared/colors.dart';

///bottom nav items for first design
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

///bottom nav items for second design
userBottomTabItems2(BuildContext context){
  return [
    new BottomNavigationBarItem(
      backgroundColor: Colors.white,
      activeIcon: Image.asset(
        'assets/images/second/home.png',
        height: 20,
        color: affairPurple,
      ),
      icon: Image.asset(
        'assets/images/second/home.png',
        //color: scarletRed,
        height: 20,
        color: affairPurple.withOpacity(0.4),
      ),
      label: "Home",
      /*title: new Text('Home',style: TextStyle(color: _currentIndex == 0 ? scarletRed : sharkGrey, fontFamily: 'GoogleSans', fontWeight: FontWeight.bold, fontSize: width(context) / 38),
          textAlign: TextAlign.center,
        ),*/
    ),
    new BottomNavigationBarItem(
      activeIcon: Image.asset(
        'assets/images/second/check_rate.png',
        height: 20,
        color: affairPurple,
      ),
      icon: Image.asset(
        'assets/images/second/check_rate.png',
        //color: scarletRed,
        height: 20,
        color: affairPurple.withOpacity(0.6),
      ),
      label: "Check Rate",
      /* title: new Text('Appointments',style: TextStyle(color: _currentIndex == 1 ? scarletRed : sharkGrey, fontFamily: 'GoogleSans', fontWeight: FontWeight.bold, fontSize: width(context) / 38 ),
          textAlign: TextAlign.center,
        ),*/),
    new BottomNavigationBarItem(
      activeIcon: Container(),
      icon: Container(),
      label: "",
      /* title: new Text('Appointments',style: TextStyle(color: _currentIndex == 1 ? scarletRed : sharkGrey, fontFamily: 'GoogleSans', fontWeight: FontWeight.bold, fontSize: width(context) / 38 ),
          textAlign: TextAlign.center,
        ),*/),
    new BottomNavigationBarItem(
      activeIcon: Image.asset(
        'assets/images/second/fund_account.png',
        height: 20,
        color: affairPurple,
      ),
      icon: Image.asset(
        'assets/images/second/fund_account.png',
        //color: scarletRed,
        height: 20,
        color: affairPurple.withOpacity(0.2),
      ),
      label: "Fund Account",
      /*title: new Text('Matches',style: TextStyle(color: _currentIndex == 2 ? scarletRed : sharkGrey, fontFamily: 'GoogleSans', fontWeight: FontWeight.bold, fontSize: width(context) / 38  ),
          textAlign: TextAlign.center,
        ),*/),
    new BottomNavigationBarItem(
      activeIcon: Image.asset(
        'assets/images/second/cards.png',
        height: 20,
        color: affairPurple,
      ),

      icon: Image.asset(
        'assets/images/second/cards.png',
        height: 20,
        color: affairPurple.withOpacity(0.4),
        //color: scarletRed,
      ),
      label: "Cards",
      /*title: new Text('Messages',style: TextStyle(color: _currentIndex == 3 ? scarletRed : sharkGrey, fontFamily: 'GoogleSans', fontWeight: FontWeight.bold, fontSize: width(context) / 38 ),
          textAlign: TextAlign.center,

        ),*/),
  ];
}