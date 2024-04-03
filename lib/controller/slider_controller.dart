import 'package:flutter/material.dart';

class SliderController extends ChangeNotifier {
  double slidervalue = 10;

  double get getSliderValue => slidervalue; // function

  void setSliderValue(double value) {
    slidervalue = value;
    notifyListeners();
  }
}
