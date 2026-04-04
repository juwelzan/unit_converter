import 'package:flutter/material.dart';
import 'package:unit_converter/features/home/data/category_data.dart';

class UnitProvider with ChangeNotifier {
  int currentInedx = 0;
  Color backGround = CategoryData.data[0].iconco;

  void selectUnit(int index, Color bc) {
    currentInedx = index;
    backGround = bc;
    notifyListeners();
  }
}
