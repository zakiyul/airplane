import 'package:airplane/ui/pages/home_page.dart';
import 'package:airplane/ui/widgets/custom_bottom_icon.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget customBottomNavigator() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
              bottom: 30, left: defaultMargin, right: defaultMargin),
          decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(defaultRadius)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomIcon(
                icon: 'assets/icon_home.png',
                isActive: true,
              ),
              CustomBottomIcon(icon: 'assets/icon_booking.png'),
              CustomBottomIcon(icon: 'assets/icon_card.png'),
              CustomBottomIcon(icon: 'assets/icon_settings.png'),
            ],
          ),
        ),
      );
    }

    Widget buildContent() {
      return HomePage();
    }

    return Scaffold(
      backgroundColor: kBgColor,
      body: Stack(children: [
        buildContent(),
        customBottomNavigator(),
      ]),
    );
  }
}
