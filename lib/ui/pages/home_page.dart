import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/destination_card.dart';
import 'package:airplane/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
            top: 30, left: defaultMargin, right: defaultMargin, bottom: 30),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy,\nZakiul Fikri',
                    style: darkTextStyle.copyWith(
                        fontSize: 24, fontWeight: semiBold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Where to fly today?',
                    style: greenTextStyle.copyWith(
                        fontSize: 16, fontWeight: light),
                  )
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/img_profile.png'))),
            )
          ],
        ),
      );
    }

    Widget popularCities() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            DestiantionCard(
              name: 'Lake Ciliwung',
              city: 'Tangerang',
              imageUrl: 'assets/img_destination1.png',
              rating: 4.8,
            ),
            DestiantionCard(
              name: 'White House',
              city: 'Spain',
              imageUrl: 'assets/img_destination2.png',
              rating: 4.7,
            ),
            DestiantionCard(
              name: 'Hill Heyo',
              city: 'Monaco',
              imageUrl: 'assets/img_destination3.png',
              rating: 4.8,
            ),
            DestiantionCard(
              name: 'Menara',
              city: 'Japan',
              imageUrl: 'assets/img_destination4.png',
              rating: 5.0,
            ),
            DestiantionCard(
              name: 'Payung Teduh',
              city: 'Singapore',
              imageUrl: 'assets/img_destination5.png',
              rating: 4.8,
            ),
          ],
        ),
      );
    }

    Widget newDestination() {
      return Column(
        children: [
          DestinationTile(
            name: 'Danau Beratan',
            city: 'Singaraja',
            imageUrl: 'assets/photos1.png',
            rating: 4.5,
          ),
          DestinationTile(
            name: 'Sydney Opera',
            city: 'Australia',
            imageUrl: 'assets/photos2.png',
            rating: 4.7,
          ),
          DestinationTile(
            name: 'Roma',
            city: 'Italy',
            imageUrl: 'assets/photos3.png',
            rating: 4.8,
          ),
        ],
      );
    }

    return ListView(
      children: [
        header(),
        popularCities(),
        Container(
          margin: EdgeInsets.only(left: defaultMargin, top: 30, bottom: 16),
          child: Text(
            'New This Year',
            style: darkTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
          ),
        ),
        newDestination(),
        SizedBox(
          height: 100,
        )
      ],
    );
  }
}
