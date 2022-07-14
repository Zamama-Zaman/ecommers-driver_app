// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../size_config.dart';

class PlannedRideDetailPage extends StatefulWidget {
  const PlannedRideDetailPage({Key? key}) : super(key: key);

  @override
  State<PlannedRideDetailPage> createState() => _PlannedRideDetailPageState();
}

class _PlannedRideDetailPageState extends State<PlannedRideDetailPage> {
  int tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          "Planned Ride Details",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            "assets/icons/arrow_back_icon.svg",
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        tabIndex = 0;
                      });
                    },
                    child: Container(
                      height: getProportionateScreenHeight(50),
                      color: Colors.transparent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 2,
                            width: double.infinity,
                            color: Colors.transparent,
                          ),
                          Text(
                            'Info',
                            style: TextStyle(
                              color: tabIndex == 0
                                  ? Color(0xFFFFFFFF)
                                  : Color(0xFFFFFFFF).withOpacity(.5),
                              fontSize: getProportionateScreenWidth(16),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            height: 2,
                            width: double.infinity,
                            color: tabIndex == 0 ? Color(0xFFD9D9D9) : null,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        tabIndex = 1;
                      });
                    },
                    child: Container(
                      height: getProportionateScreenHeight(50),
                      color: Colors.transparent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 2,
                            width: double.infinity,
                            color: Colors.transparent,
                          ),
                          Text(
                            'Extras',
                            style: TextStyle(
                              color: tabIndex == 1
                                  ? Color(0xFFFFFFFF)
                                  : Color(0xFFFFFFFF).withOpacity(.5),
                              fontSize: getProportionateScreenWidth(16),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            height: 2,
                            width: double.infinity,
                            color: tabIndex == 1 ? Color(0xFFD9D9D9) : null,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            tabIndex == 0 ? InfoWidget() : ExtrasWidget(),
          ],
        ),
      ),
    );
  }
}

class ExtrasWidget extends StatelessWidget {
  const ExtrasWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.02),
        Container(
          height: getProportionateScreenHeight(55),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFF66676C),
            borderRadius: BorderRadius.circular(5),
          ),
          alignment: Alignment.center,
          child: Text(
            'Call Passenger',
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: getProportionateScreenWidth(18),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.02),
        Container(
          height: getProportionateScreenHeight(55),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFF66676C),
            borderRadius: BorderRadius.circular(5),
          ),
          alignment: Alignment.center,
          child: Text(
            'Passenger did not show up',
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: getProportionateScreenWidth(18),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.02),
        Container(
          height: getProportionateScreenHeight(55),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFF66676C),
            borderRadius: BorderRadius.circular(5),
          ),
          alignment: Alignment.center,
          child: Text(
            'Emergency cancel',
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: getProportionateScreenWidth(18),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.02),
        Container(
          height: getProportionateScreenHeight(55),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFE4E4E4),
            borderRadius: BorderRadius.circular(5),
          ),
          alignment: Alignment.center,
          child: Text(
            'Call UGKS Via Phone',
            style: TextStyle(
              color: Color(0xFFF24A40),
              fontSize: getProportionateScreenWidth(18),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.02),
        Container(
          height: getProportionateScreenHeight(55),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFE4E4E4),
            borderRadius: BorderRadius.circular(5),
          ),
          alignment: Alignment.center,
          child: Text(
            'Chat with UGKS ',
            style: TextStyle(
              color: Color(0xFFF24A40),
              fontSize: getProportionateScreenWidth(18),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.02),
        Container(
          height: getProportionateScreenHeight(55),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFE4E4E4),
            borderRadius: BorderRadius.circular(5),
          ),
          alignment: Alignment.center,
          child: Text(
            'Give ride back',
            style: TextStyle(
              color: Color(0xFFF24A40),
              fontSize: getProportionateScreenWidth(18),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}

class InfoWidget extends StatelessWidget {
  const InfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.05),
        Row(
          children: [
            SvgPicture.asset("assets/icons/profile_icon.svg"),
            SizedBox(width: SizeConfig.screenWidth * 0.06),
            Text(
              'Soikot Khan',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: getProportionateScreenWidth(16),
                fontWeight: FontWeight.w700,
              ),
            ),
            Spacer(),
            Text(
              'Change'.toUpperCase(),
              style: TextStyle(
                color: Color(0xFFF24A40),
                fontSize: getProportionateScreenWidth(16),
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.03),
        Row(
          children: [
            SvgPicture.asset("assets/icons/profile_icon.svg"),
            SizedBox(width: SizeConfig.screenWidth * 0.06),
            Text(
              '-----',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: getProportionateScreenWidth(16),
                fontWeight: FontWeight.w700,
              ),
            ),
            Spacer(),
            Text(
              'Change'.toUpperCase(),
              style: TextStyle(
                color: Color(0xFFF24A40),
                fontSize: getProportionateScreenWidth(16),
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: getProportionateScreenWidth(40)),
          child: Divider(
            color: Color(0xFFFFFFFF).withOpacity(.7),
            height: getProportionateScreenHeight(40),
          ),
        ),

        /// Rhu Cross 3
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              "assets/icons/cross_location_icon.svg",
            ),
            SizedBox(width: SizeConfig.screenWidth * 0.06),
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
                SizedBox(height: SizeConfig.screenHeight * 0.01),
                Text(
                  'Kallang, 437433 Singapore',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF).withOpacity(.7),
                    fontSize: getProportionateScreenWidth(12),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                Text(
                  'Holiday Inn Johor Bahru City Centre',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: getProportionateScreenWidth(16),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.01),
                Text(
                  'Jalan Tun Abdul Razak 80000, 80000\nJohor Bahru, Johor',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF).withOpacity(.7),
                    fontSize: getProportionateScreenWidth(12),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.01),
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

        SizedBox(height: SizeConfig.screenHeight * 0.03),

        Row(
          children: [
            SizedBox(width: SizeConfig.screenWidth * 0.1),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ADDITIONAL COMMENTS',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF).withOpacity(.7),
                    fontSize: getProportionateScreenWidth(16),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.01),
                Text(
                  'one child car seat',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: getProportionateScreenWidth(12),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                Text(
                  'GUEST',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF).withOpacity(.7),
                    fontSize: getProportionateScreenWidth(16),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.01),
                Text(
                  'Mr. Ankur Agarwal',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: getProportionateScreenWidth(12),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                Text(
                  'PICKUP SIGN',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF).withOpacity(.7),
                    fontSize: getProportionateScreenWidth(16),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.01),
                Text(
                  'Ankur Agarwal',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: getProportionateScreenWidth(12),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                Text(
                  'BOOKING NUMBER',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF).withOpacity(.7),
                    fontSize: getProportionateScreenWidth(16),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.01),
                Text(
                  '275842843',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: getProportionateScreenWidth(12),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

// ADDITIONAL COMMENTS
// one child car seat

// GUEST
// Mr. Ankur Agarwal

// PICKUP SIGN
// Ankur Agarwal

// BOOKING NUMBER
// 275842843
