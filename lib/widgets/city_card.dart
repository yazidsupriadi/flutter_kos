import 'package:flutter/material.dart';
import 'package:flutter_kos/models/city.dart';
import 'package:flutter_kos/theme.dart';

class CityCard extends StatelessWidget {
  // This widget is the root of your application.

  final City city;

  CityCard(this.city);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        width: 120,
        color: Colors.white,
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  city.imageUrl,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                city.isPopular
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 50,
                          height: 30,
                          decoration: BoxDecoration(
                              color: purpleColor,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(36))),
                          child: Center(
                              child: Image.asset(
                            'assets/images/star.png',
                            width: 20,
                          )),
                        ),
                      )
                    : Container()
              ],
            ),
            SizedBox(height: 3),
            Text(
              city.name,
              style: blackTextStyle.copyWith(fontSize: 12),
            )
          ],
        ));
  }
}
