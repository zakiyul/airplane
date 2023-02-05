import 'package:airplane/ui/widgets/custom_btn.dart';
import 'package:airplane/ui/widgets/custom_text_form.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Join us and get\nyour next journey',
          style: darkTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return CustomTextForm(
          title: 'Full Name',
          hintText: 'Your full name',
        );
      }

      Widget emailInput() {
        return CustomTextForm(
            title: 'Email Address', hintText: 'Your email address');
      }

      Widget passwordInput() {
        return CustomTextForm(
          title: 'Password',
          hintText: 'Your Password',
          isObscure: true,
        );
      }

      Widget hobbyInput() {
        return CustomTextForm(
          title: 'Hobby',
          hintText: 'Your hobby',
          margin: 30,
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius)),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            CustomBtn(
                title: 'Get Started',
                onPressed: () {
                  Navigator.pushNamed(context, '/main');
                })
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
          margin: EdgeInsets.only(top: 50, bottom: 70),
          child: Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Terms and Conditions',
                style: greenTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                    decoration: TextDecoration.underline),
              ),
            ),
          ));
    }

    return Scaffold(
      backgroundColor: kBgColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [title(), inputSection(), tacButton()],
        ),
      ),
    );
  }
}
