// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unit_converter/core/package/screen_utile/extension.dart';
import 'package:unit_converter/features/home/provider/provider.dart';

class ViewAns extends StatelessWidget {
  const ViewAns({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<UnitProvider>(
      builder: (context, state, _) {
        return Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xff3D3860).withOpacity(0.4),
            border: Border.all(color: Colors.white.withOpacity(0.2), width: 2),
            borderRadius: BorderRadius.circular(10.w),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "data",
                  style: TextStyle(color: Colors.white, fontSize: 20.sp),
                ),
                SizedBox(height: 10.h),
                AnimatedScale(
                  scale: state.isAnimating ? 1.4 : 0.9,
                  duration: Duration(milliseconds: 200),

                  child: Text(
                    state.result.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 20.sp),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
