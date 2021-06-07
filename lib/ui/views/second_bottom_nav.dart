import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glade_task/core/constants/app_constants.dart';
import 'package:glade_task/core/providers/bottom_nav_provider.dart';
import 'package:glade_task/ui/shared/colors.dart';
import 'package:glade_task/ui/widgets/bottom_nav_items.dart';
import 'package:glade_task/ui/widgets/exit_dialog.dart';
import 'package:provider/provider.dart';



class SecondBottomNav extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    return _SecondBottomNav();
  }
}

class _SecondBottomNav extends State<SecondBottomNav> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => exitApp(context),
      child: Consumer<BottomNavProvider>(
        builder: (context, provider, child) => Scaffold(
          key: _scaffoldKey,
          extendBodyBehindAppBar: true,
          //backgroundColor: affairPurple,
          appBar: provider.secondCurrentIndex == 0 ? AppBar(
            leading: Padding(
              padding:  EdgeInsets.only(left: width(context) / 20),
              child: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: width(context) / 18,
                ),
                onPressed: () => _scaffoldKey.currentState.openDrawer(),
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: [
              Padding(
                padding:  EdgeInsets.only(right: width(context) / 20),
                child: Icon(
                  CupertinoIcons.bell_solid,
                  size: width(context) / 18,
                  color: sinYellow,
                ),
              )
            ],
          ) : null,
          drawer: Drawer(),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(0, 0.75), // changes position of shadow
                ),
              ],
            ),
            child: BottomNavigationBar(
                onTap: (index) =>  provider.updateSecondIndex(index),
                type: BottomNavigationBarType.fixed,
                elevation: 7,
                selectedFontSize: width(context) / 35,
                unselectedFontSize: width(context) / 35,
                backgroundColor: Colors.white,
                selectedLabelStyle: TextStyle(
                  fontFamily: 'NeurialGrotesk',
                  //fontSize: width(context) / 27,
                  fontWeight: FontWeight.w700,),
                unselectedLabelStyle: TextStyle(
                  fontFamily: 'NeurialGrotesk',
                  fontWeight: FontWeight.w700,),
                selectedItemColor: affairPurple,
                unselectedItemColor: affairPurple.withOpacity(0.4),
                currentIndex: provider.secondCurrentIndex,
                items: userBottomTabItems2(context)),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: affairPurple,
            onPressed: () => print("i was clicked"),
            elevation: 0,
            child: Image.asset("assets/images/second/send.png", height: height(context) / 30,),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          body: IndexedStack(index: provider.secondCurrentIndex, children: provider.children2),
        ),
      ),
    );

  }













}


