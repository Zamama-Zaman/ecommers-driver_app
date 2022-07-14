// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ugks_limousine_driver_app/size_config.dart';

class OfferPage extends StatelessWidget {
  const OfferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Container(
                height: getProportionateScreenHeight(50),
                width: double.infinity,
                color: Colors.transparent,
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Offers',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          '2 Offers',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: getProportionateScreenWidth(12),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Filter',
                      style: TextStyle(
                        color: Color(0xFFF24A40),
                        fontSize: getProportionateScreenWidth(16),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.04),

              /// Offer Container

              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Container(
                  height: getProportionateScreenHeight(597),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF111111),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: getProportionateScreenHeight(90),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFF161616),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset("assets/icons/calander_icon.svg"),
                            Text(
                              'Wed  7  Jul 2022 \n02:45 PM',
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: getProportionateScreenWidth(18),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(width: SizeConfig.screenWidth * 0.01),
                            Container(
                              height: getProportionateScreenHeight(29),
                              width: getProportionateScreenWidth(69),
                              decoration: BoxDecoration(
                                color: Color(0xFFF24A40),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'VAN / SUV',
                                style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: getProportionateScreenWidth(12),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: SizeConfig.screenHeight * 0.02),

                      /// Singapore Changi
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(20)),
                        child: Column(
                          children: [
                            Container(
                              color: Colors.transparent,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    color: Colors.transparent,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height:
                                              SizeConfig.screenHeight * 0.03,
                                        ),
                                        Container(
                                          height: 6,
                                          width: 6,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFD9D9D9),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        ),
                                        SizedBox(
                                          height:
                                              SizeConfig.screenHeight * 0.015,
                                        ),
                                        SvgPicture.asset(
                                          "assets/icons/vertical_divider_icon.svg",
                                        ),
                                        SizedBox(
                                          height:
                                              SizeConfig.screenHeight * 0.015,
                                        ),
                                        Container(
                                          height: 6,
                                          width: 6,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFF24A40),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    color: Colors.transparent,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        /// First Heading with text
                                        Row(
                                          children: [
                                            Text(
                                              'Singapore Changi\nInternational Airport (SIN)',
                                              style: TextStyle(
                                                color: Color(0xFFFFFFFF),
                                                fontSize:
                                                    getProportionateScreenWidth(
                                                        18),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              width:
                                                  SizeConfig.screenWidth * 0.1,
                                            ),
                                            SvgPicture.asset(
                                              "assets/icons/dots_vertical_icon.svg",
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                            height:
                                                SizeConfig.screenHeight * 0.02),
                                        Text(
                                          'All terminals, Exit after baggage claim for\nMeet & Greet., Airport Blvd, Singapore',
                                          style: TextStyle(
                                              color: Color(0xFFFFFFFF)
                                                  .withOpacity(.7),
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      12),
                                              fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(
                                            height: SizeConfig.screenHeight *
                                                0.025),

                                        /// Second Heading with text
                                        Row(
                                          children: [
                                            Text(
                                              'Singapore Changi\nInternational Airport (SIN)',
                                              style: TextStyle(
                                                color: Color(0xFFFFFFFF),
                                                fontSize:
                                                    getProportionateScreenWidth(
                                                        18),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              width:
                                                  SizeConfig.screenWidth * 0.1,
                                            ),
                                            SvgPicture.asset(
                                              "assets/icons/dots_vertical_icon.svg",
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                            height:
                                                SizeConfig.screenHeight * 0.02),
                                        Text(
                                          'All terminals, Exit after baggage claim for\nMeet & Greet., Airport Blvd, Singapore',
                                          style: TextStyle(
                                              color: Color(0xFFFFFFFF)
                                                  .withOpacity(.7),
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      12),
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: SizeConfig.screenHeight * 0.02),

                      /// Airoplane Icon and message icon
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(20),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                    "assets/icons/airoplane_icon.svg"),
                                SizedBox(width: SizeConfig.screenWidth * 0.05),
                                Text(
                                  'SQ 212',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: getProportionateScreenWidth(18),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: SizeConfig.screenHeight * 0.02),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/message_icon.svg",
                                ),
                                SizedBox(width: SizeConfig.screenWidth * 0.05),
                                Text(
                                  'I will be travelling with 3 kids so will need\nbooster seats for them ages ar...',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF).withOpacity(.7),
                                    fontSize: getProportionateScreenWidth(12),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(width: SizeConfig.screenWidth * 0.05),
                                SvgPicture.asset(
                                  "assets/icons/arrow_down_icon.svg",
                                ),
                              ],
                            ),
                            Divider(
                              color: Color(0xFFFFFFFF).withOpacity(.7),
                              height: getProportionateScreenHeight(30),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'OFFER ENDS:\n08 Jul 2022 02.22 PM',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF).withOpacity(.7),
                                    fontSize: getProportionateScreenWidth(12),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  'USD 38.0',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: getProportionateScreenWidth(18),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'ca.28 km',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF).withOpacity(.7),
                                    fontSize: getProportionateScreenWidth(12),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: SizeConfig.screenHeight * 0.015),
                            Container(
                              height: getProportionateScreenHeight(50),
                              width: double.infinity,
                              padding: EdgeInsets.only(
                                left: getProportionateScreenWidth(3),
                                top: getProportionateScreenHeight(3),
                                bottom: getProportionateScreenHeight(3),
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xFF1B1A1A),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF24A40),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Accept',
                                    style: TextStyle(
                                      color: Color(0xFFFFFFFF),
                                      fontSize: getProportionateScreenWidth(18),
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    width: SizeConfig.screenWidth * 0.1,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: SizeConfig.screenHeight * 0.02),

              /// Second Offer
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Container(
                  height: getProportionateScreenHeight(597),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF111111),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: getProportionateScreenHeight(90),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFF161616),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset("assets/icons/calander_icon.svg"),
                            Text(
                              'Wed  7  Jul 2022 \n02:45 PM',
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: getProportionateScreenWidth(18),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(width: SizeConfig.screenWidth * 0.01),
                            Container(
                              height: getProportionateScreenHeight(29),
                              width: getProportionateScreenWidth(69),
                              decoration: BoxDecoration(
                                color: Color(0xFFF24A40),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'VAN / SUV',
                                style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: getProportionateScreenWidth(12),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: SizeConfig.screenHeight * 0.02),

                      /// Singapore Changi
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(20)),
                        child: Column(
                          children: [
                            Container(
                              color: Colors.transparent,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    color: Colors.transparent,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height:
                                              SizeConfig.screenHeight * 0.03,
                                        ),
                                        Container(
                                          height: 6,
                                          width: 6,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFD9D9D9),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        ),
                                        SizedBox(
                                          height:
                                              SizeConfig.screenHeight * 0.015,
                                        ),
                                        SvgPicture.asset(
                                          "assets/icons/vertical_divider_icon.svg",
                                        ),
                                        SizedBox(
                                          height:
                                              SizeConfig.screenHeight * 0.015,
                                        ),
                                        Container(
                                          height: 6,
                                          width: 6,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFF24A40),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    color: Colors.transparent,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        /// First Heading with text
                                        Row(
                                          children: [
                                            Text(
                                              'Singapore Changi\nInternational Airport (SIN)',
                                              style: TextStyle(
                                                color: Color(0xFFFFFFFF),
                                                fontSize:
                                                    getProportionateScreenWidth(
                                                        18),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              width:
                                                  SizeConfig.screenWidth * 0.1,
                                            ),
                                            SvgPicture.asset(
                                              "assets/icons/dots_vertical_icon.svg",
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                            height:
                                                SizeConfig.screenHeight * 0.02),
                                        Text(
                                          'All terminals, Exit after baggage claim for\nMeet & Greet., Airport Blvd, Singapore',
                                          style: TextStyle(
                                              color: Color(0xFFFFFFFF)
                                                  .withOpacity(.7),
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      12),
                                              fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(
                                            height: SizeConfig.screenHeight *
                                                0.025),

                                        /// Second Heading with text
                                        Row(
                                          children: [
                                            Text(
                                              'Singapore Changi\nInternational Airport (SIN)',
                                              style: TextStyle(
                                                color: Color(0xFFFFFFFF),
                                                fontSize:
                                                    getProportionateScreenWidth(
                                                        18),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              width:
                                                  SizeConfig.screenWidth * 0.1,
                                            ),
                                            SvgPicture.asset(
                                              "assets/icons/dots_vertical_icon.svg",
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                            height:
                                                SizeConfig.screenHeight * 0.02),
                                        Text(
                                          'All terminals, Exit after baggage claim for\nMeet & Greet., Airport Blvd, Singapore',
                                          style: TextStyle(
                                              color: Color(0xFFFFFFFF)
                                                  .withOpacity(.7),
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      12),
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: SizeConfig.screenHeight * 0.02),

                      /// Airoplane Icon and message icon
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(20),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                    "assets/icons/airoplane_icon.svg"),
                                SizedBox(width: SizeConfig.screenWidth * 0.05),
                                Text(
                                  'SQ 212',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: getProportionateScreenWidth(18),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: SizeConfig.screenHeight * 0.02),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/message_icon.svg",
                                ),
                                SizedBox(width: SizeConfig.screenWidth * 0.05),
                                Text(
                                  'I will be travelling with 3 kids so will need\nbooster seats for them ages ar...',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF).withOpacity(.7),
                                    fontSize: getProportionateScreenWidth(12),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(width: SizeConfig.screenWidth * 0.05),
                                SvgPicture.asset(
                                  "assets/icons/arrow_down_icon.svg",
                                ),
                              ],
                            ),
                            Divider(
                              color: Color(0xFFFFFFFF).withOpacity(.7),
                              height: getProportionateScreenHeight(30),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'OFFER ENDS:\n08 Jul 2022 02.22 PM',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF).withOpacity(.7),
                                    fontSize: getProportionateScreenWidth(12),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  'USD 38.0',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: getProportionateScreenWidth(18),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'ca.28 km',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF).withOpacity(.7),
                                    fontSize: getProportionateScreenWidth(12),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: SizeConfig.screenHeight * 0.015),
                            Container(
                              height: getProportionateScreenHeight(50),
                              width: double.infinity,
                              padding: EdgeInsets.only(
                                left: getProportionateScreenWidth(3),
                                top: getProportionateScreenHeight(3),
                                bottom: getProportionateScreenHeight(3),
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xFF1B1A1A),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF24A40),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Accept',
                                    style: TextStyle(
                                      color: Color(0xFFFFFFFF),
                                      fontSize: getProportionateScreenWidth(18),
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    width: SizeConfig.screenWidth * 0.1,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: SizeConfig.screenHeight * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
