import 'package:flutter/material.dart';
import 'package:sorogi/constants.dart';

class TileContent extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String label1;
  final String label2;

  const TileContent({this.icon, this.label1, this.label2, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
          color: iconColor,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label1,
          style: kLabelTextStyle,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label2,
          style: kNumberTextStyle,
        )
      ],
    );
  }
}
