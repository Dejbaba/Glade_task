import 'package:flutter/material.dart';
import 'package:glade_task/locator.dart';
import 'package:glade_task/ui/views/bottom_nav.dart';
import 'package:glade_task/ui/views/second_bottom_nav.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: allProviders,
      child: MaterialApp(
        title: 'Glade Task',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: Theme.of(context)
              .appBarTheme
              .copyWith(brightness: Brightness.dark),
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
       home: BottomNav(),
        //home: SecondBottomNav(),
      ),
    );
  }
}

