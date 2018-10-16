import 'package:flutter/material.dart';
import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:googlelogin_app/const.dart';
import 'package:io/ansi.dart';
import 'package:shared_preferences/shared_preferences.dart';
import  'package:fluttertoast/fluttertoast.dart';

class MainScreen extends StatefulWidget {

  final String currentUserId;

  MainScreen({Key key, @required this.currentUserId}) : super(key: key);

  @override
  State createState() => new MainScreenState(currentUserId: currentUserId);
}

class MainScreenState extends State<MainScreen> {
  MainScreenState({Key key, @required this.currentUserId});

  final String currentUserId;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome'),
          centerTitle: true,
          actions: <Widget>[
            new FlatButton(
              child: new Text('+',
                  style: new TextStyle(fontSize: 17.0, color: Colors.white)),
              //onPressed:_signOut,
              onPressed: () {
                print(this.currentUserId);
              },

            )
          ],
        ),
        drawer: new Drawer(
            child: new Column(children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text(
                    "Firstname Lastname",
                    style: new TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0)
                ),
                accountEmail: new Text(
                  "firstname@lastname.com",
                  style: new TextStyle(color: Colors.blueGrey[50]),
                ),
                currentAccountPicture: new CircleAvatar(
                    backgroundColor: Colors.brown, child: new Text("FL")),
              )
            ]
            )
        )
    );
  }
}

