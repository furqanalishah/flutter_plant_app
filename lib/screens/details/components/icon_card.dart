import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key key,
    this.icon,
  }) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 62,
      width: 62,
      padding: EdgeInsets.all(kDefaultPadding / 3),
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 16),
              blurRadius: 22,
              color: kPrimaryColor.withOpacity(0.22)),
          BoxShadow(
              offset: Offset(-16, -16), blurRadius: 20, color: Colors.white),
        ],
      ),
      child: SvgPicture.asset(icon),
    );
  }
}
