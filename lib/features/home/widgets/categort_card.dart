// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unit_converter/core/package/screen_utile/extension.dart';
import 'package:unit_converter/features/home/data/category_data.dart';
import 'package:unit_converter/features/home/model/category_model.dart';
import 'package:unit_converter/shared/widgets/jumping_button.dart';

typedef Unit = Function(List<UnitType>, int);

class CategortCard extends StatelessWidget {
  final CategoryModel data;
  final bool isActiv;
  final int index;
  final Unit onTap;

  const CategortCard({
    super.key,

    required this.onTap,

    required this.isActiv,
    required this.index,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return JumpingButton(
      onTap: () {
        onTap.call(data.unitType, index);
      },
      color: data.back.withOpacity(0.4),
      borderRadius: .circular(20),
      padding: EdgeInsets.all(2),
      border: isActiv
          ? Border.all(color: data.iconco, width: 3)
          : Border.all(color: Colors.white.withOpacity(0.2), width: 2),
      child: Column(
        mainAxisAlignment: .spaceEvenly,
        crossAxisAlignment: .center,
        children: [
          SvgPicture.asset(data.icon, color: data.iconco, width: 45.w),
          Text(
            data.name,
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: .bold,
              color: data.text.withOpacity(0.8),
            ),
          ),
        ],
      ),
    );
  }
}
