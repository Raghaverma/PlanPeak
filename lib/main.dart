import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:table_calendar/table_calendar.dart';
//import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:firebase_auth_web/firebase_auth_web.dart';

import 'screens/login.dart';

Future<void> main() async {
// WidgetsFlutterBinding.ensureInitialized();
// await Firebase.initializeApp();

  runApp(const MaterialApp(
    home: Login(),
    debugShowCheckedModeBanner: false,
    // backgroundColor: Color.fromARGB(255, 0, 0, 0),
  ));
}

