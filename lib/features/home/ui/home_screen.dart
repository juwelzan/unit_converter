import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unit_converter/core/package/screen_utile/extension.dart';
import 'package:unit_converter/features/home/data/category_data.dart';
import 'package:unit_converter/features/home/service/convetar_Service.dart';
import 'package:unit_converter/features/home/widgets/categort_card.dart';
import 'package:unit_converter/shared/widgets/jumping_button.dart';
import 'package:unit_converter/shared/widgets/sliver_sizedbox.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin {
  int initialIndex = 0;
  double _rotationVlue = 0.0;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(title: Text("Unit Converter"), centerTitle: true),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsetsGeometry.all(10),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                final data = CategoryData.data[index];
                return CategortCard(
                  index: index,
                  isActiv: index == initialIndex,
                  unitType: data.unitType,
                  icon: data.icon,
                  title: data.name,
                  onTap: (unitType, inde) {
                    setState(() {
                      initialIndex = inde;
                    });
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
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
          ),

          SliverSizedbox(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            height: 50.h,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: .center,
              children: [
                Container(width: 0.35.mw, height: 50.h, color: Colors.amber),

                AnimatedRotation(
                  duration: Duration(milliseconds: 200),
                  turns: _rotationVlue,

                  child: JumpingButton(
                    duration: 100,
                    onTap: _rotation,
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
          ),
          SliverPadding(padding: EdgeInsets.all(10)),
          SliverSizedbox(
            padding: EdgeInsets.all(10.w),
            height: 150.h,
            width: double.infinity,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10.w),
              ),
              child: Column(children: [Text("data"), Text("134124")]),
            ),
          ),
          SliverPadding(padding: EdgeInsets.all(100)),
        ],
      ),
    );
  }

  void _rotation() {
    setState(() => _rotationVlue += 0.5);
    // print(ConvetarService.convetTime(value: 2, from: .month, to: .month));
    print(
      ConvetarService.convertStorag(valu: 1, from: .ronnabit, to: .quettabit),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
