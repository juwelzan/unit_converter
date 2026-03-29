import 'package:flutter/cupertino.dart';

class ScreenMap {
  ScreenMap._();
  static const Size defaultSize = Size(360, 690);
  static late double _height, _width;
  static late Orientation _orientation;

  static void init(Size deviceSize, Size screenSize, Orientation orientation) {
    _height = deviceSize.height / screenSize.height;
    _width = deviceSize.width / screenSize.width;
    _orientation = orientation;
  }

  static double w(num v) => v * _width;
  static double h(num v) => v * _height;
  static bool isPortrait = Orientation.portrait == _orientation;
}
