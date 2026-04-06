import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unit_converter/core/package/screen_utile/extension.dart';
import 'package:unit_converter/features/home/data/category_data.dart';
import 'package:unit_converter/features/home/provider/provider.dart';
import 'package:unit_converter/features/home/widgets/categort_card.dart';
import 'package:unit_converter/features/home/widgets/select_drop.dart';
import 'package:unit_converter/shared/widgets/sliver_sizedbox.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin {
  int initialIndex = 0;
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Consumer<UnitProvider>(
      builder: (context, state, _) {
        return Scaffold(
          backgroundColor: Color(0xff0D0B1E),
          appBar: AppBar(
            title: Text("Unit Converter"),
            centerTitle: true,
            backgroundColor: Color(0xff0D0B1E),
          ),
          body: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: EdgeInsetsGeometry.all(10),
                sliver: SliverGrid(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    final data = CategoryData.data[index];
                    return CategortCard(
                      index: index,
                      isActiv: index == state.currentInedx,
                      data: data,
                      onTap: (unitType, inde) {
                        context.read<UnitProvider>().selectUnit(
                          inde,
                          data.iconco,
                        );
                        context.read<UnitProvider>().updateType(unitType);
                      },
                    );
                  }, childCount: CategoryData.data.length),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10.w,
                    mainAxisSpacing: 10.w,
                  ),
                ),
              ),
              SliverPadding(padding: EdgeInsetsGeometry.all(10.w)),
              SliverSizedbox(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                height: 50.h,
                width: double.infinity,
                child: TextField(
                  style: TextStyle(color: Colors.white, fontSize: 15.sp),
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.number,
                  textCapitalization: TextCapitalization.none,

                  controller: _controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    // label: Text("Enter Value"),
                    hintText: "Enter Value",
                    labelText: "From",
                    labelStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                    hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                  ),
                  onChanged: (value) {
                    context.read<UnitProvider>().value =
                        double.tryParse(value) ?? 0;
                    context.read<UnitProvider>().updateFormDrop(false);
                    context.read<UnitProvider>().updateToDrop(false);
                    context.read<UnitProvider>().answer(
                      state.types[0].name,
                      state.selectedFormTypeName,
                      state.selectedToTypeName,
                      double.tryParse(value) ?? 0,
                    );
                  },
                ),
              ),

              SliverSizedbox(
                width: double.infinity,
                height: 470.h,
                child: SelectDrop(),
              ),
            ],
          ),
        );
      },
    );
  }

  // void _rotation() {
  //   setState(() => _rotationVlue += 0.5);
  //   // print(ConvetarService.convetTime(value: 2, from: .month, to: .month));
  //   print(ConvetarService.convertArea(20, .acre, .squareCentimeter));
  // }
  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;
}
