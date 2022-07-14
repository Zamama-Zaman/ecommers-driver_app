// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ugks_limousine_driver_app/presentation/pages/busineess_page.dart';
import 'package:ugks_limousine_driver_app/presentation/pages/first_page.dart';
import 'package:ugks_limousine_driver_app/presentation/widgets/custom_card_widget.dart';
import 'package:ugks_limousine_driver_app/presentation/widgets/heading_widget.dart';

import '../../size_config.dart';

class DefaultVehicles extends StatelessWidget {
  const DefaultVehicles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          "Default Vehicles",
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
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Text(
              'Select a vehicle to be automatically assigned to your future rides. You can still change the vehicle for a ride at any time in the Planned Ride Details.',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: getProportionateScreenWidth(15),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),

          /// BUSINESS
          SizedBox(height: SizeConfig.screenHeight * 0.05),
          HeadingWidget(heading: "BUSINESS"),
          CustomCardWidget(
            title: "MERCEDES-BENZ E-CLASS | SLN8735U",
            func: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BusineessPage(),
              ),
            ),
          ),

          /// FIRST
          HeadingWidget(heading: "FIRST"),
          CustomCardWidget(
            title: "MERCEDES-BENZ E-CLASS | SLN8735U",
            func: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FirstPage(),
              ),
            ),
          ),

          /// VAN/SUV
          HeadingWidget(heading: "VAN/SUV"),
          CustomCardWidget(title: "No Default vehicles"),
        ],
      ),
    );
  }
}
