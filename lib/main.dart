import 'package:flutter/material.dart';
import 'package:speako/pages/HomePage.dart';
import 'package:speako/pages/InsertTextPage.dart';
import 'package:speako/pages/AddVoicePage.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/homePage',
  routes: {
    '/homePage': (context) => HomePage(),
    '/insertTextPage': (context) => InsertTextPage(),
    '/addVoicePage': (context) => AddVoicePage(),
  }
));
