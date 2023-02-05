import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomBtn extends StatelessWidget {
  final String title;
  final double width;
  final Function() onPressed;
  final EdgeInsets margin;
  const CustomBtn(
      {super.key,
      required this.title,
      this.width = double.infinity,
      this.margin = EdgeInsets.zero,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 55,
      margin: margin,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultRadius))),
        child: Text(
          title,
          style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
        ),
      ),
    );
  }
}
