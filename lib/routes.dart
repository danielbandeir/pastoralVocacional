import 'package:flutter/material.dart';
import 'package:pastoravocacional/screens/home_screen.dart';

Map<String, WidgetBuilder> routes(){
  return {
    '/home': (BuildContext context) => HomeScreen(),
  };
}