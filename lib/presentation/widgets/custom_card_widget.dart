// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../size_config.dart';

class CustomCardWidget extends StatelessWidget {
  final String title;
  final Function? func;
  const CustomCardWidget({
    Key? key,
    required this.title,
    this.func,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(50),
      width: double.infinity,
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      decoration: BoxDecoration(
        color: Color(0xFF161616),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          IconButton(
            splashColor: Colors.transparent,
            splashRadius: 0.8,
            onPressed: () => func!(),
            icon: SvgPicture.asset("assets/icons/arrow_forward_icon.svg"),
          ),
        ],
      ),
    );
  }
}
