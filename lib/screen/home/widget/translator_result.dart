import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:translate/style/fonts.dart';
import '../../../style/size.dart';

class TranslatorResult extends StatelessWidget {
  const TranslatorResult({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height:250,
        width: SC.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(.1),
                  offset: Offset(0,2),
                  spreadRadius:1,
                  blurRadius:1
              )
            ]
        ),

        child: Padding(
          padding: const EdgeInsets.only(left:20,right:10,top: 20,bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("English",style: appFont.large.copyWith(fontSize: SC.hz!*4.2),),
                  SizedBox(width:5),
                  FaIcon(FontAwesomeIcons.speakerDeck),
                ],
              ),
              SizedBox(height: 10,),
              Expanded(child: Text('Hello Bangladesh')),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.copy_rounded)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.share_rounded)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.star_border)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}