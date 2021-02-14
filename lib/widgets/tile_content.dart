import 'package:flutter/material.dart';
import 'package:sorogi/constants.dart';
import 'package:auto_size_text/auto_size_text.dart';

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
          size: 60.0,
          color: iconColor,
        ),
        SizedBox(
          height: 10.0,
        ),
        AutoSizeText(
          label1,
          style: kLabelTextStyle,
          maxLines: 2,
          minFontSize: 20.0,
          group: labelGroup,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10.0,
        ),
        AutoSizeText(
          label2,
          style: kNumberTextStyle,
          minFontSize: 15.0,
          maxLines: 1,
          group: numberGroup,
          textAlign: TextAlign.center,
        ),
        // FittedBox(
        //   fit: BoxFit.contain,
        //   child: Text(
        //     label2,
        //     style: kNumberTextStyle,
        //     textAlign: TextAlign.center,
        //   ),
        // )
      ],
    );
  }
}
