import 'package:flutter/material.dart';
import 'package:unit_converter/core/package/screen_utile/screen_map.dart';

typedef ScreenBuilder = Function(BuildContext contex);

class ScreenUtile extends StatelessWidget {
  final ScreenBuilder builder;
  final Size? screenSize;

  const ScreenUtile({super.key, required this.builder, this.screenSize});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        Size deviceSize = MediaQuery.of(context).size;
        ScreenMap.init(deviceSize, ScreenMap.defaultSize, orientation);

        return ScreenInherit(child: builder(context));
      },
    );
  }
}

class ScreenInherit extends InheritedWidget {
  const ScreenInherit({super.key, required super.child});
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}
