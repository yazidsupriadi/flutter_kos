import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_kos/models/city.dart';
import 'package:flutter_kos/models/place.dart';
import 'package:flutter_kos/theme.dart';

class PlaceCard extends StatelessWidget {
  // This widget is the root of your application.
  final Place place;
  PlaceCard(this.place);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: Container(
            width: 140,
            height: 120,
            child: Stack(
              children: [
                Image.asset(place.imageUrl),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(36))),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/star.png',
                          width: 20,
                        ),
                        Text('${place.rating}/5',
                            style: whiteTextStyle.copyWith(fontSize: 13))
                      ],
                    )),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: 20,
          height: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              place.name,
              style: blackTextStyle.copyWith(fontSize: 18),
            ),
            SizedBox(
              height: 1,
            ),
            Text.rich(TextSpan(
                text: '\$ ${place.price}',
                style: purpleTextStyle.copyWith(fontSize: 16),
                children: [
                  TextSpan(
                      text: '/month',
                      style: greyTextStyle.copyWith(fontSize: 16))
                ])),
            SizedBox(
              height: 16,
            ),
            Text(
              '${place.city},${place.country}',
              style: greyTextStyle,
            )
          ],
        )
      ],
    );
  }
}
