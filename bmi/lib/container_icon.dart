import 'package:flutter/material.dart';
import 'constants.dart';

class ContainerIcon extends StatelessWidget {

  const ContainerIcon({required this.icon,required this.title});
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 85,
          // color: Color(0xFF8D8E98),
        ),
        SizedBox(height: 15,),
        Text(
          title,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
