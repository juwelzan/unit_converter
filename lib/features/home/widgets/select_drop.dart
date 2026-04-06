// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:unit_converter/core/package/screen_utile/extension.dart';
import 'package:unit_converter/features/home/provider/provider.dart';
import 'package:unit_converter/features/home/widgets/custrom_dropdown.dart';
import 'package:unit_converter/features/home/widgets/view_ans.dart';
import 'package:unit_converter/shared/widgets/jumping_button.dart';

class SelectDrop extends StatelessWidget {
  const SelectDrop({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<UnitProvider>(
      builder: (context, state, _) {
        return Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 40.w),
                        child: Text(
                          "From",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 50.w),
                        child: Text(
                          "To",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 17),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: .center,
                    children: [
                      JumpingButton(
                        onTap: () {
                          context.read<UnitProvider>().updateFormDrop(
                            !state.isFormDrop,
                          );
                        },
                        borderRadius: .circular(15),
                        color: Color(0xff3D3860).withOpacity(0.4),
                        border: state.isFormDrop
                            ? Border.all(color: state.backGround, width: 3)
                            : Border.all(
                                color: Colors.white.withOpacity(0.2),
                                width: 2,
                              ),
                        height: 50.h,
                        width: 0.35.mw,
                        child: Center(
                          child: Text(
                            state.selectNameFrom,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),

                      AnimatedRotation(
                        duration: Duration(milliseconds: 300),

                        // turns:  _rotationVlue,
                        turns: state.rotationValue,

                        child: JumpingButton(
                          duration: 100,

                          onTap: () {
                            context.read<UnitProvider>().updateRotationValue();
                            context.read<UnitProvider>().swap();
                            context.read<UnitProvider>().answer(
                              state.selectedFormTypeName,
                              state.selectedFormTypeName,
                              state.selectedToTypeName,
                              state.value,
                            );
                          },
                          color: Color(0xff3D3860).withOpacity(0.4),
                          border: Border.all(color: state.backGround, width: 1),
                          // onTap: _rotation,
                          padding: EdgeInsets.all(14),
                          height: 50.h,
                          width: 0.2.mw,
                          shape: BoxShape.circle,
                          child: SvgPicture.asset(
                            "assets/refresh.svg",
                            color: Colors.white.withOpacity(0.8),
                            width: 20.w,
                          ),
                        ),
                      ),

                      JumpingButton(
                        onTap: () {
                          context.read<UnitProvider>().updateToDrop(
                            !state.isToDrop,
                          );
                        },
                        borderRadius: .circular(15),
                        color: Color(0xff3D3860).withOpacity(0.4),
                        border: state.isToDrop
                            ? Border.all(color: state.backGround, width: 3)
                            : Border.all(
                                color: Colors.white.withOpacity(0.2),
                                width: 2,
                              ),
                        height: 50.h,
                        width: 0.35.mw,
                        child: Center(
                          child: Text(
                            state.selectNameTo,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  SizedBox(
                    height: 200.h,
                    width: double.infinity,
                    child: ViewAns(),
                  ),
                ],
              ),
            ),

            Positioned(
              top: 100.h,
              left: 10.w,
              right: 40.w,
              child: CustromDropdown(
                selectIndex: state.seletedFormDrop,
                folding: state.isFormDrop,
                onTap: (type, index) {
                  context.read<UnitProvider>().updateFormDropIndex(
                    index,
                    type.toString().split(".").last,
                  );
                  context.read<UnitProvider>().updateFormDrop(false);
                  context.read<UnitProvider>().answer(
                    type,
                    type,
                    state.selectedToTypeName,
                    state.value,
                  );
                },
              ),
            ),
            Positioned(
              top: 100.h,
              left: 40.w,
              right: 10.w,
              child: CustromDropdown(
                selectIndex: state.seletedToDrop,
                folding: state.isToDrop,
                onTap: (type, index) {
                  context.read<UnitProvider>().updateToDropIndex(
                    index,
                    type.toString().split(".").last,
                  );
                  context.read<UnitProvider>().updateToDrop(false);
                  context.read<UnitProvider>().answer(
                    type,
                    state.selectedFormTypeName,
                    type,
                    state.value,
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
