import 'package:unit_converter/core/package/screen_utile/screen_map.dart';

extension CanvasSize on num {
  double get w => ScreenMap.w(this);
  double get h => ScreenMap.h(this);
  double get sp => ScreenMap.sp(this);
}

extension Mhw on double {
  double get mw => ScreenMap.mw(this);
  double get mh => ScreenMap.mh(this);
}
