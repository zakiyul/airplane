import 'package:airplane/ui/widgets/custom_btn.dart';
import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/img_destination1.png'))),
      );
    }

    Widget customShadow() {
      return Container(
        width: double.infinity,
        height: 214,
        margin: EdgeInsets.only(top: 236),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              kWhiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95),
            ])),
      );
    }

    Widget emblemImage() {
      return Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: 108,
          height: 24,
          margin: EdgeInsets.only(top: 30),
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('assets/icon_emblem.png'))),
        ),
      );
    }

    Widget customGreeting() {
      return Container(
        height: 60,
        margin: EdgeInsets.only(
            left: defaultMargin, right: defaultMargin, top: 310),
        child: Row(
          children: [
            //title n city
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lake Ciliwung',
                    style: whiteTextStyle.copyWith(
                        fontSize: 24, fontWeight: semiBold),
                  ),
                  Text(
                    'Tangerang',
                    style: whiteTextStyle.copyWith(
                        fontSize: 16, fontWeight: light),
                  )
                ],
              ),
            ),
            //rating
            Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icon_star.png'))),
                ),
                Text(
                  '4.8',
                  style:
                      whiteTextStyle.copyWith(fontSize: 14, fontWeight: medium),
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget customContent() {
      Widget customTitle(String title) {
        return Container(
          margin: EdgeInsets.only(bottom: 6),
          child: Text(
            title,
            style: darkTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
        );
      }

      Widget customPhotos(List<String> photos) {
        return Container(
          width: double.infinity,
          height: 70,
          child: Row(
            children: photos.map((photo) {
              return Container(
                height: 70,
                width: 70,
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    image: DecorationImage(image: AssetImage(photo))),
              );
            }).toList(),
          ),
        );
      }

      Widget customInterest() {
        Widget interest(String title) {
          return Row(
            children: [
              Container(
                width: 16,
                height: 16,
                margin: EdgeInsets.only(
                  right: 6,
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icon_check.png'))),
              ),
              Text(
                title,
                style:
                    darkTextStyle.copyWith(fontSize: 14, fontWeight: regular),
              )
            ],
          );
        }

        return Container(
            margin: EdgeInsets.only(top: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    interest('Kids Park'),
                    SizedBox(
                      height: 10,
                    ),
                    interest('City Museum')
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    interest('Honor Bridge'),
                    SizedBox(
                      height: 10,
                    ),
                    interest('Centrall Mall')
                  ],
                ),
              ],
            ));
      }

      Widget bookSection() {
        return Container(
          height: 55,
          width: double.infinity,
          margin: EdgeInsets.only(
              left: defaultMargin, right: defaultMargin, bottom: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'IDR 2.500.000',
                    style: darkTextStyle.copyWith(
                        fontSize: 18, fontWeight: medium),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'per orang',
                    style:
                        grayTextStyle.copyWith(fontSize: 14, fontWeight: light),
                  )
                ],
              ),
              CustomBtn(
                title: 'Book Now',
                onPressed: () {},
                width: 170,
              )
            ],
          ),
        );
      }

      return ListView(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(
                left: defaultMargin,
                right: defaultMargin,
                top: 400,
                bottom: 30),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(defaultRadius)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customTitle('About'),
                Text(
                  'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                  style: darkTextStyle.copyWith(
                      fontSize: 14, fontWeight: regular, height: 1.8),
                ),
                SizedBox(
                  height: 20,
                ),
                customTitle('Photos'),
                customPhotos([
                  'assets/photos1.png',
                  'assets/photos2.png',
                  'assets/photos3.png',
                ]),
                SizedBox(
                  height: 20,
                ),
                customTitle('Interests'),
                customInterest()
              ],
            ),
          ),
          bookSection()
        ],
      );
    }

    return Scaffold(
      backgroundColor: kBgColor,
      body: Stack(
        children: [
          backgroundImage(),
          customShadow(),
          emblemImage(),
          customGreeting(),
          customContent(),
        ],
      ),
    );
  }
}
