// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../size_config.dart';

class HeadingWidget extends StatelessWidget {
  final String heading;
  const HeadingWidget({
    Key? key,
    required this.heading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(46),
      width: double.infinity,
      color: Colors.transparent,
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      alignment: Alignment.centerLeft,
      child: Text(
        heading,
        style: TextStyle(
          color: Color(0xFFFFFFFF),
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
