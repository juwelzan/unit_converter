import 'package:flutter/material.dart';

class SliverSizedbox extends StatelessWidget {
  final double? height, width;
  final Widget? child;
  final EdgeInsetsGeometry? padding;

  const SliverSizedbox({
    super.key,
    this.height,
    this.width,
    this.child,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: padding ?? const EdgeInsets.all(0),
        child: SizedBox(height: height, width: width, child: child),
      ),
    );
  }
}
