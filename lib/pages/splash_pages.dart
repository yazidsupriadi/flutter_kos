import 'package:flutter/material.dart';
import 'package:flutter_kos/pages/homepage.dart';
import 'package:flutter_kos/theme.dart';

class SplashPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/images/splash.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 30),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/logo.jpg'))),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Find Cozy Place \n and Happy Holiday',
                      style: blackTextStyle.copyWith(fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Find Cozy Place \n and Happy Holiday',
                      style: greyTextStyle.copyWith(fontSize: 10),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: 210,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        color: purpleColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17)),
                        child: Text(
                          'Explore Now',
                          style: whiteTextStyle,
                        ),
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
