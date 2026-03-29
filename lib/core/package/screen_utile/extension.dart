import 'package:unit_converter/core/package/screen_utile/screen_map.dart';

extension CanvasSize on num {
  double get w => ScreenMap.w(this);
  double get h => ScreenMap.h(this);
}
