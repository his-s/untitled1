import 'package:flutter/cupertino.dart';

class DataProvider extends ChangeNotifier {
  String name = "";
  setName(String value) {
    name = value;
    notifyListeners();
  }

  String password = "";
  setPassword(String value) {
    password = value;
    notifyListeners();
  }
}
