// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../size_config.dart';

class NewsFeedPage extends StatelessWidget {
  const NewsFeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          "Newsfeed",
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
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              Container(
                height: getProportionateScreenHeight(496),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF161616).withOpacity(.6),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    Container(
                      height: getProportionateScreenHeight(254),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(.6),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/feed_news_image.png",
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),

                    /// title
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: SizeConfig.screenHeight * 0.02),
                          Text(
                            'ACCEPT RIDES WITH JUST ONE SWIPE',
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: getProportionateScreenWidth(16),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: SizeConfig.screenHeight * 0.02),
                          Text(
                            "You can now see all the ride info at first\nglance, including flight numbers and special\nrequests, and accept it with a single swipe.\nAlongside push notifications for new ride\noffers, you'll be able to assess rides easier\nthan ever before.",
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: getProportionateScreenWidth(14),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: SizeConfig.screenHeight * 0.02),
                          Text(
                            "LEARN MORE",
                            style: TextStyle(
                              color: Color(0xFFF24A40),
                              fontSize: getProportionateScreenWidth(16),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Container(
                height: getProportionateScreenHeight(496),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF161616).withOpacity(.6),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    Container(
                      height: getProportionateScreenHeight(254),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(.6),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/feed_news_image.png",
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),

                    /// title
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: SizeConfig.screenHeight * 0.02),
                          Text(
                            'ACCEPT RIDES WITH JUST ONE SWIPE',
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: getProportionateScreenWidth(16),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: SizeConfig.screenHeight * 0.02),
                          Text(
                            "You can now see all the ride info at first\nglance, including flight numbers and special\nrequests, and accept it with a single swipe.\nAlongside push notifications for new ride\noffers, you'll be able to assess rides easier\nthan ever before.",
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: getProportionateScreenWidth(14),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: SizeConfig.screenHeight * 0.02),
                          Text(
                            "LEARN MORE",
                            style: TextStyle(
                              color: Color(0xFFF24A40),
                              fontSize: getProportionateScreenWidth(16),
                              fontWeight: FontWeight.w700,
                            ),
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
    );
  }
}
