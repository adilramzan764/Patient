
import 'package:calne_heatlh_care1/Appointments/Appointments.dart';
import 'package:calne_heatlh_care1/MainScreen.dart';
import 'package:calne_heatlh_care1/Page1.dart';


import 'package:flutter/material.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,


      home: Page1(),
    );
  }
}


