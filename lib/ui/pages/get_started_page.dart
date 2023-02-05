import 'package:airplane/ui/widgets/custom_btn.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Container(
          //   width: double.infinity,
          //   height: double.infinity,
          //   alignment: Alignment.center,
          //   decoration: BoxDecoration(
          //       image: DecorationImage(image: AssetImage('assets/img_bg.png'))),
          // ),
          Image.asset(
            'assets/img_bg.png',
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Fly Like a Bird',
                  style: whiteTextStyle.copyWith(
                      fontSize: 32, fontWeight: semiBold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Explore new world with us and let\nyourself get an amazing experiences',
                  style:
                      whiteTextStyle.copyWith(fontSize: 16, fontWeight: light),
                  textAlign: TextAlign.center,
                ),
                CustomBtn(
                    title: 'Get Started',
                    width: 220,
                    margin: EdgeInsets.only(top: 50, bottom: 80),
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign-up');
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
