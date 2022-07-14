// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ugks_limousine_driver_app/presentation/widgets/point_widget.dart';

import '../../size_config.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          "First",
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PointWidget(point: "MERCEDES-BENZ E-CLASS | SLN8735U"),
            SizedBox(height: SizeConfig.screenHeight * 0.08),
            PointWidget(point: "MERCEDES-BENZ E-CLASS | SLN8735U"),
            SizedBox(height: SizeConfig.screenHeight * 0.08),
            PointWidget(point: "MERCEDES-BENZ E-CLASS | SLN8735U"),
            SizedBox(height: SizeConfig.screenHeight * 0.08),
            PointWidget(point: "MERCEDES-BENZ E-CLASS | SLN8735U"),
            SizedBox(height: SizeConfig.screenHeight * 0.4),
          ],
        ),
      ),
    );
  }
}
