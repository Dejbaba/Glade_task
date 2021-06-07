

import 'package:flutter/material.dart';
import 'package:glade_task/core/constants/app_constants.dart';

Future<bool> exitApp(BuildContext context) {
  return showDialog(
    context: context,
    builder: (_) => new AlertDialog(
      backgroundColor: Colors.black,
      title: new Text('Do you want to Logout?',
        style: TextStyle(
            fontSize: width(context) / 25,
            fontWeight: FontWeight.w500,
            color: Colors.white
        ),),
      actions: <Widget>[
        new FlatButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: new Text('No', style: TextStyle(
              color: Colors.white
          ),),
        ),
        new FlatButton(
          onPressed: () async{
            Navigator.pop(context);
            Navigator.pop(context);
          },
          child: new Text('Yes', style: TextStyle(
              color: Colors.white
          ),),
        ),
      ],
    ),
    /*child: new AlertDialog(
        backgroundColor: Colors.black,
        title: new Text('Do you want to Logout?',
          style: TextStyle(
              fontSize: width(context) / 25,
              fontWeight: FontWeight.w500,
              color: Colors.white
          ),),
        actions: <Widget>[
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('No', style: TextStyle(
                color: Colors.white
            ),),
          ),
          new FlatButton(
            onPressed: () async{
              Navigator.pop(context);
              Navigator.pop(context);
            },
            child: new Text('Yes', style: TextStyle(
                color: Colors.white
            ),),
          ),
        ],
      ),*/
  ) ??
      false;
}