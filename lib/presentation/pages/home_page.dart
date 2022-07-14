// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ugks_limousine_driver_app/presentation/pages/news_feed_page.dart';
import 'package:ugks_limousine_driver_app/presentation/pages/profile_page.dart';
import 'package:ugks_limousine_driver_app/size_config.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Image.asset(
          "assets/images/title_image.png",
          width: getProportionateScreenWidth(196),
          height: getProportionateScreenHeight(21),
        ),
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NewsFeedPage(),
              ),
            );
          },
          child: Center(
            child: SvgPicture.asset(
              "assets/icons/menu_icon.svg",
              height: getProportionateScreenHeight(25),
              width: getProportionateScreenWidth(32),
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(),
                ),
              );
            },
            icon: SvgPicture.asset("assets/icons/personal_account.svg"),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.zero,
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.1),
            Container(
              height: 104,
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
                vertical: getProportionateScreenHeight(20),
              ),
              color: Color(0xFF111111),
              alignment: Alignment.centerLeft,
              child: Text(
                "Hello,\nSoikot Khan",
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.1),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons/star_icon.svg"),
                  Text(
                    'Your ride ratings will appear\nhere.No ratings yet',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
