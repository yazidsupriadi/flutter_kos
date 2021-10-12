import 'package:flutter/material.dart';
import 'package:flutter_kos/models/city.dart';
import 'package:flutter_kos/models/place.dart';
import 'package:flutter_kos/theme.dart';
import 'package:flutter_kos/widgets/city_card.dart';
import 'package:flutter_kos/widgets/place_card.dart';

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: edge),
          child: ListView(
            children: [
              //title / header
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  'Explore Now',
                  style: blackTextStyle.copyWith(fontSize: 24),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  'Find a cozy Place',
                  style: greyTextStyle.copyWith(fontSize: 14),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              //popular cities
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  'Popular Cities',
                  style: regularTextStyle.copyWith(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 24),
                    CityCard(City(
                        id: 1,
                        name: 'Jakarta',
                        imageUrl: 'assets/images/city1.jpg')),
                    SizedBox(width: 20),
                    CityCard(City(
                        id: 2,
                        name: 'Bandung',
                        imageUrl: 'assets/images/city2.jpg',
                        isPopular: true)),
                    SizedBox(width: 20),
                    CityCard(City(
                        id: 3,
                        name: 'Semarang',
                        imageUrl: 'assets/images/splash.jpg')),
                  ],
                ),
              ),
              //recomended places
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  'Recomended Places',
                  style: blackTextStyle.copyWith(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    PlaceCard(Place(
                        id: 1,
                        name: 'Swiss bell Hotel',
                        imageUrl: 'assets/images/city1.jpg',
                        price: 60,
                        city: 'Jakarta',
                        country: 'Indonesia',
                        rating: 4)),
                    SizedBox(
                      height: 10,
                    ),
                    PlaceCard(Place(
                        id: 2,
                        name: 'Swiss bell Hotel',
                        imageUrl: 'assets/images/city1.jpg',
                        price: 60,
                        city: 'Bandung',
                        country: 'Indonesia',
                        rating: 3)),
                    SizedBox(
                      height: 10,
                    ),
                    PlaceCard(Place(
                        id: 1,
                        name: 'Swiss bell Hotel',
                        imageUrl: 'assets/images/city1.jpg',
                        price: 60,
                        city: 'Semarang',
                        country: 'Indonesia',
                        rating: 4)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
