import 'package:flutter/material.dart';

class CounterController extends ChangeNotifier {
  
  int count = 0;
  int sliderValue = 0;

  int get getcount => count; // Function


  void increment(){
    count++;
    notifyListeners();
  }

  void decrement(){
    count--;
    notifyListeners();
  }

  
}