import 'package:flutter/material.dart';
import 'package:unit_converter/shared/widgets/jumping_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        JumpingButton(
          isSliver: true,
          onTap: () {
            print("object");
          },
        ),
      ],
    );
  }
}
