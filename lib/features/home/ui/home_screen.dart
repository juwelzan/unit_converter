import 'package:flutter/material.dart';
import 'package:unit_converter/core/package/screen_utile/extension.dart';
import 'package:unit_converter/features/home/data/category_data.dart';
import 'package:unit_converter/features/home/widgets/categort_card.dart';
import 'package:unit_converter/shared/widgets/sliver_sizedbox.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int initialIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Unit Converter"), centerTitle: true),
      body: CustomScrollView(
        slivers: [
          SliverSizedbox(
            height: 400,
            width: 100,
            child: GridView(
              padding: EdgeInsets.all(10),
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10.w,
                mainAxisSpacing: 10.w,
              ),
              children: List.generate(CategoryData.data.length, (index) {
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
              }),
            ),
          ),
          SliverSizedbox(height: 30.h),
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
              children: [
                Container(width: 0.25.mw, height: 50.h, color: Colors.amber),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
