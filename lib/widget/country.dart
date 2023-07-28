import 'package:flutter/material.dart';
import 'package:translate/style/color.dart';
import 'package:translate/style/fonts.dart';
import '../screen/home/home_screen.dart';
import '../style/size.dart';

class Country extends StatelessWidget {
  const Country({
    super.key,
    required this.side,
    required this.country,
    required this.onTap,
    required this.flag,
  });
  final Side side;
  final VoidCallback onTap;
  final String country;
  final String flag;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Row(
        children: [
          if(side==Side.left)
            Text(country,style: appFont.large.copyWith(fontSize: SC.hz!*4.3),),
          SizedBox(width: 10,),

          CircleAvatar(
            radius: 18,
            backgroundColor: appColor.bg,
          ),

          SizedBox(width: 10,),
          if(side==Side.right)
            Text(country,style: appFont.large.copyWith(fontSize: SC.hz!*4.3),),
        ],
      ),
    );
  }
}