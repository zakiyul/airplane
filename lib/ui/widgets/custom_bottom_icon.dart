import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomBottomIcon extends StatelessWidget {
  final String icon;
  final bool isActive;
  const CustomBottomIcon(
      {super.key, required this.icon, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(
          width: 24,
          height: 24,
          decoration:
              BoxDecoration(image: DecorationImage(image: AssetImage(icon))),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
              color: isActive ? kPrimaryColor : kTransparentColor,
              borderRadius: BorderRadius.circular(18)),
        )
      ],
    );
  }
}
