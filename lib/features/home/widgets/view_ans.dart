import 'package:flutter/material.dart';
import 'package:unit_converter/core/package/screen_utile/extension.dart';

class ViewAns extends StatelessWidget {
  const ViewAns({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(10.w),
      ),
      child: Column(children: [Text("data"), Text("134124")]),
    );
  }
}
