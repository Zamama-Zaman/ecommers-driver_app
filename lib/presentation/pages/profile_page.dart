// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ugks_limousine_driver_app/presentation/pages/default_vehicles.dart';
import 'package:ugks_limousine_driver_app/presentation/widgets/custom_card_widget.dart';
import 'package:ugks_limousine_driver_app/presentation/widgets/heading_widget.dart';

import '../../size_config.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          "Profile",
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
      body: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.02),

          /// Profile Image and Description
          Container(
            height: 58,
            width: double.infinity,
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            color: Colors.transparent,
            child: Row(
              children: [
                Container(
                  height: 58,
                  width: 58,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                SizedBox(width: getProportionateScreenWidth(10)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Soikot Khan',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Hello I am Soikot',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.02),

          /// VEHICLES
          HeadingWidget(heading: "VEHICLES"),
          CustomCardWidget(
            title: "Default Vehicles",
            func: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DefaultVehicles(),
              ),
            ),
          ),

          /// SUPPORT
          SizedBox(height: SizeConfig.screenHeight * 0.02),
          HeadingWidget(heading: "SUPPORT"),
          CustomCardWidget(title: "Help"),
          SizedBox(height: SizeConfig.screenHeight * 0.002),
          CustomCardWidget(title: "Share Feedback"),

          /// LEGAL
          SizedBox(height: SizeConfig.screenHeight * 0.02),
          HeadingWidget(heading: "LEGAL"),
          CustomCardWidget(title: "Legal Notice"),
          SizedBox(height: SizeConfig.screenHeight * 0.002),
          CustomCardWidget(title: "Privacy Policy"),
          SizedBox(height: SizeConfig.screenHeight * 0.002),
          CustomCardWidget(title: "GPS Tracking Policy"),

          /// APP VERSION 3.23.1
          SizedBox(height: SizeConfig.screenHeight * 0.02),
          HeadingWidget(heading: "APP VERSION 3.23.1"),
        ],
      ),
    );
  }
}
