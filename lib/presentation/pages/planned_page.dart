// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ugks_limousine_driver_app/presentation/pages/planned_ride_detail_page.dart';

import '../../size_config.dart';

class PlannedPage extends StatelessWidget {
  const PlannedPage({Key? key}) : super(key: key);

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
                          'Planned',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          '1 ride',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: getProportionateScreenWidth(12),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'My Rides',
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
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlannedRideDetailPage(),
                      ),
                    );
                  },
                  child: Container(
                    height: getProportionateScreenHeight(380),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFF161616),
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
                              SvgPicture.asset(
                                  "assets/icons/calander_icon.svg"),
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

                        /// Divider
                        Padding(
                          padding: EdgeInsets.only(
                              left: getProportionateScreenWidth(60)),
                          child: Divider(
                            color: Color(0xFFFFFFFF).withOpacity(.7),
                            height: getProportionateScreenHeight(30),
                          ),
                        ),

                        SizedBox(height: SizeConfig.screenHeight * 0.01),

                        /// Profile
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset(
                              "assets/icons/profile_icon.svg",
                            ),
                            Text(
                              'Soikot Khan',
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: getProportionateScreenWidth(16),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: SizeConfig.screenWidth * 0.38),
                          ],
                        ),

                        SizedBox(height: SizeConfig.screenHeight * 0.01),

                        /// Divider
                        Padding(
                          padding: EdgeInsets.only(
                              left: getProportionateScreenWidth(60)),
                          child: Divider(
                            color: Color(0xFFFFFFFF).withOpacity(.7),
                            height: getProportionateScreenHeight(30),
                          ),
                        ),

                        SizedBox(height: SizeConfig.screenHeight * 0.01),

                        /// Rhu Cross 3
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              "assets/icons/cross_location_icon.svg",
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Rhu Cross 3',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: getProportionateScreenWidth(16),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                    height: SizeConfig.screenHeight * 0.01),
                                Text(
                                  'Kallang, 437433 Singapore',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF).withOpacity(.7),
                                    fontSize: getProportionateScreenWidth(12),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                    height: SizeConfig.screenHeight * 0.02),
                                Text(
                                  'Holiday Inn Johor Bahru City Centre',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: getProportionateScreenWidth(16),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                    height: SizeConfig.screenHeight * 0.01),
                                Text(
                                  'Jalan Tun Abdul Razak 80000, 80000\nJohor Bahru, Johor',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF).withOpacity(.7),
                                    fontSize: getProportionateScreenWidth(12),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                    height: SizeConfig.screenHeight * 0.01),
                                Text(
                                  'ca. 33 Km',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF).withOpacity(.7),
                                    fontSize: getProportionateScreenWidth(12),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
