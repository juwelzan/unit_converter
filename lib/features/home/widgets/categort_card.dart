import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unit_converter/shared/widgets/jumping_button.dart';

class CategortCard extends StatelessWidget {
  const CategortCard({super.key});

  @override
  Widget build(BuildContext context) {
    return JumpingButton(
      padding: EdgeInsets.all(8),
      border: Border.all(color: Colors.black, width: 3),
      child: Column(
        mainAxisAlignment: .spaceEvenly,
        children: [
          SvgPicture.asset(
            "assets/area-chart-svgrepo-com.svg",
            color: Colors.amber,
          ),
          Text("Size"),
        ],
      ),
    );
  }
}
