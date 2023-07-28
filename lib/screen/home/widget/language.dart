import 'package:flutter/material.dart';
import '../../../style/size.dart';
import '../../../widget/country.dart';
import '../home_screen.dart';

class Language extends StatelessWidget {
  const Language({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:15),
      child: Container(
        height:50,
        width: SC.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(.1),
                  offset: Offset(0,2),
                  spreadRadius:1,
                  blurRadius:1
              )
            ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Country(
              side: Side.right,
              country: "English",
              flag: '',
              onTap: (){},

            ),

            IconButton(onPressed: (){}, icon: Icon(Icons.swap_horiz_rounded,size: 30,)),

            Country(side: Side.left,country: "Bangla", onTap: () { print("Bangla"); }, flag: '',),
          ],
        ),
      ),
    );
  }
}