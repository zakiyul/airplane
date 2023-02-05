import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomTextForm extends StatelessWidget {
  final String title;
  final String hintText;
  final bool isObscure;
  final double margin;
  const CustomTextForm(
      {super.key,
      required this.title,
      required this.hintText,
      this.isObscure = false,
      this.margin = 20.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: darkTextStyle.copyWith(fontSize: 14, fontWeight: regular),
          ),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            cursorColor: kDarkColor,
            obscureText: isObscure,
            decoration: InputDecoration(
                hintText: hintText,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(color: kPrimaryColor))),
          )
        ],
      ),
    );
    ;
  }
}
