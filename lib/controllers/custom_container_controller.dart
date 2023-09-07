import 'dart:math';

import 'package:flutter/material.dart';

class CustomContainerController extends ChangeNotifier{

  double height=100;
  double width=100;
  Color color=Colors.blueAccent;

  void changeContainerAttrbutes(){
    height=Random().nextDouble()*300;
    width=Random().nextDouble()*300;
    color=Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255));
    notifyListeners();
  }

}