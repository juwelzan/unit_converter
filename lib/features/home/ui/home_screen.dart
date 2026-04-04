import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unit_converter/core/package/screen_utile/extension.dart';
import 'package:unit_converter/features/home/data/category_data.dart';
import 'package:unit_converter/features/home/provider/provider.dart';
import 'package:unit_converter/features/home/widgets/categort_card.dart';
import 'package:unit_converter/features/home/widgets/select_drop.dart';
import 'package:unit_converter/features/home/widgets/view_ans.dart';
import 'package:unit_converter/shared/widgets/sliver_sizedbox.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin {
  int initialIndex = 0;

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
                height: 80.h,
                width: double.infinity,
                child: SelectDrop(),
              ),
              SliverPadding(padding: EdgeInsets.all(10)),
              SliverSizedbox(
                padding: EdgeInsets.all(10.w),
                height: 150.h,
                width: double.infinity,
                child: ViewAns(),
              ),
              SliverPadding(padding: EdgeInsets.all(100)),
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
  bool get wantKeepAlive => true;
}
