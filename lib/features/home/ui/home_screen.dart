import 'package:flutter/material.dart';
import 'package:unit_converter/core/package/screen_utile/extension.dart';
import 'package:unit_converter/features/home/widgets/categort_card.dart';
import 'package:unit_converter/shared/widgets/sliver_sizedbox.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              children: List.generate(8, (index) {
                return CategortCard();
              }),
            ),
          ),
        ],
      ),
    );
  }
}
