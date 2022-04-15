import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bangundatarcalculator/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainHome(),
    ));
  });
}