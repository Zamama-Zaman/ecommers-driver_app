import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../size_config.dart';

class PointWidget extends StatelessWidget {
  final String point;
  const PointWidget({
    Key? key,
    required this.point,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(20),
      width: getProportionateScreenWidth(304),
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset("assets/icons/dot_icon.svg"),
          Text(
            point,
            style: TextStyle(
              color: const Color(0xFFFFFFFF),
              fontSize: getProportionateScreenWidth(14),
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
