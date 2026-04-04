import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:unit_converter/core/package/screen_utile/extension.dart';
import 'package:unit_converter/features/home/provider/provider.dart';
import 'package:unit_converter/shared/widgets/jumping_button.dart';

class SelectDrop extends StatelessWidget {
  const SelectDrop({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<UnitProvider>(
      builder: (context, state, _) {
        return Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 40.w),
                  child: Text("from"),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 50.w),
                  child: Text("To"),
                ),
              ],
            ),
            SizedBox(height: 17),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: .center,
              children: [
                Container(
                  padding: .all(5),
                  width: 0.35.mw,
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: state.backGround,
                    borderRadius: .circular(15),
                  ),
                  child: DropdownButton(items: [
                    DropdownMenuItem(
                      value: ,
                      child: Text("34"))
                  ], onChanged: (value) {

                  },),
                ),

                AnimatedRotation(
                  duration: Duration(milliseconds: 200),
                  // turns:  _rotationVlue,
                  turns: 0,

                  child: JumpingButton(
                    duration: 100,
                    // onTap: _rotation,
                    padding: EdgeInsets.all(10),
                    height: 50.h,
                    width: 0.2.mw,
                    shape: BoxShape.circle,
                    child: SvgPicture.asset("assets/refresh.svg"),
                  ),
                ),

                Container(width: 0.35.mw, height: 50.h, color: Colors.amber),
              ],
            ),
          ],
        );
      },
    );
  }
}
