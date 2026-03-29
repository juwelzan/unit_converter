import 'package:flutter/cupertino.dart';

class ScreenMap {
  ScreenMap._();
  static const Size defaultSize = Size(360, 690);
  static late double _height, _width, _deviceWidth, _deviceHeight;
  static late Orientation _orientation;

  static void init(Size deviceSize, Size screenSize, Orientation orientation) {
    _height = deviceSize.height / screenSize.height;
    _width = deviceSize.width / screenSize.width;
    _deviceHeight = deviceSize.height;
    _deviceWidth = deviceSize.width;
    _orientation = orientation;
  }

  static double w(num v) => v * _width;
  static double h(num v) => v * _height;
  static double sp(num v) => v * (_height + _width) / 2;
  static double mw(double v) => v * _deviceWidth;
  static double mh(double v) => v * _deviceHeight;
  static bool isPortrait = Orientation.portrait == _orientation;
}
