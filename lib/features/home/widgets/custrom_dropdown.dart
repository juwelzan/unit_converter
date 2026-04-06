// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unit_converter/core/package/screen_utile/extension.dart';
import 'package:unit_converter/features/home/provider/provider.dart';

typedef Unit = Function(dynamic type, int index);

class CustromDropdown extends StatelessWidget {
  const CustromDropdown({
    super.key,
    required this.folding,
    required this.onTap,
    required this.selectIndex,
  });
  final Unit onTap;
  final bool folding;
  final int selectIndex;

  @override
  Widget build(BuildContext context) {
    return Consumer<UnitProvider>(
      builder: (context, state, _) {
        return AnimatedContainer(
          duration: Duration(milliseconds: 200),
          padding: EdgeInsets.all(9),
          height: folding ? 300.h : 0,
          decoration: BoxDecoration(
            color: Color(0xff3D3860),
            border: folding
                ? Border.all(color: state.backGround, width: 3)
                : null,
            borderRadius: .circular(15),
          ),
          child: ListView(
            children: List.generate(state.types.length, (index) {
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: GestureDetector(
                  onTap: () {
                    onTap.call(state.types[index].name, index);
                  },
                  child: Container(
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: Color(0xff3D3860),
                      border: selectIndex == index
                          ? Border.all(color: state.backGround, width: 3)
                          : null,
                      borderRadius: .circular(15),
                    ),
                    child: Center(
                      child: Text(
                        state.types[index].name.toString().split(".").last,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 13.sp,
                          fontWeight: .bold,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
