// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unit_converter/core/package/screen_utile/extension.dart';
import 'package:unit_converter/features/home/model/category_model.dart';
import 'package:unit_converter/shared/widgets/jumping_button.dart';

typedef Unit = Function(UnitType, int);

class CategortCard extends StatelessWidget {
  final String? icon, title;
  final bool isActiv;
  final int index;
  final Unit onTap;
  final UnitType unitType;
  const CategortCard({
    super.key,
    this.icon,
    this.title,
    required this.onTap,
    required this.unitType,
    required this.isActiv,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return JumpingButton(
      onTap: () {
        onTap.call(unitType, index);
      },
      padding: EdgeInsets.all(2),
      border: isActiv ? Border.all(color: Colors.black, width: 4) : Border(),
      child: Column(
        mainAxisAlignment: .spaceEvenly,
        crossAxisAlignment: .center,
        children: [
          SvgPicture.asset(
            icon ?? "assets/area-chart-svgrepo-com.svg",
            color: Colors.amber,
            width: 45.w,
          ),
          Text(
            title ?? "",
            style: TextStyle(fontSize: 13.sp, fontWeight: .bold),
          ),
        ],
      ),
    );
  }
}
