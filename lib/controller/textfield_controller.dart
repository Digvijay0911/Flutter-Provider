import 'package:flutter/material.dart';

class TextfieldController extends ChangeNotifier {

  TextEditingController name = TextEditingController();
  String Name = "";

  String get getName => Name;

  

  void setName() {
    Name = name.text;
    notifyListeners();
  }
}
