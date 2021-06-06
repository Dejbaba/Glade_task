import 'dart:async';
import 'package:flutter/material.dart';
import 'package:glade_task/core/constants/app_constants.dart';
import 'package:glade_task/core/providers/bottom_nav_provider.dart';
import 'package:glade_task/ui/shared/colors.dart';
import 'package:glade_task/ui/widgets/listview_items/bottom_nav_items.dart';
import 'package:glade_task/ui/widgets/listview_items/exit_dialog.dart';
import 'package:provider/provider.dart';



class BottomNav extends StatefulWidget {





  @override
  State<StatefulWidget> createState() {
    return _BottomNav();
  }
}

class _BottomNav extends State<BottomNav> {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
          onWillPop: () async => exitApp(context),
          child: Consumer<BottomNavProvider>(
            builder: (context, provider, child) => Scaffold(
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
                    onTap: (index) =>  provider.updateIndex(index),
                    type: BottomNavigationBarType.fixed,
                    elevation: 7,
                    selectedFontSize: width(context) / 35,
                    unselectedFontSize: width(context) / 35,
                    backgroundColor: Colors.white,
                    selectedLabelStyle: TextStyle(
                        fontFamily: 'Avenir',
                        //fontSize: width(context) / 27,
                        fontWeight: FontWeight.w700,),
                    unselectedLabelStyle: TextStyle(
                      fontFamily: 'Avenir',
                      fontWeight: FontWeight.w700,),
                    selectedItemColor: astronautBlue,
                    unselectedItemColor: astronautBlue.withOpacity(0.4),
                    currentIndex: provider.currentIndex,
                    items: userBottomTabItems(context)),
              ),
              body: SafeArea(child: IndexedStack(index: provider.currentIndex, children: provider.children)),
            ),
          ),
        );

  }













}


