import 'package:doctorapp/Feature1/DoctorApp.dart';

//import 'package:doctorapp/Feature2/imagepicker.dart';
import 'package:flutter/material.dart';


void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
    debugShowCheckedModeBanner: false,
      home:  DoctorApp(),
    // home: CameraWidget(),
    );
  }
}
