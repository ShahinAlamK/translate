import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:translate/style/color.dart';
import 'package:translate/style/fonts.dart';
import '../../../style/size.dart';

class TypingLanguage extends StatelessWidget {
  const TypingLanguage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 290,
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
          padding: const EdgeInsets.only(left:20,right:10,top:15,bottom: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Text("English",style: appFont.large.copyWith(fontSize: SC.hz!*4.2),),
                  SizedBox(width:5),
                  FaIcon(FontAwesomeIcons.speakerDeck),

                  Spacer(),
                  Icon(Icons.clear)
                ],
              ),

              Expanded(
                child: TextField(
                  maxLines: null,
                  minLines:SC.height!.toInt(),
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    hintText: "Something typing...",
                    border: InputBorder.none,
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color: appColor.bg,
                        shape: BoxShape.circle
                    ),
                    child: Icon(Icons.mic,color: Colors.white,size:25,),
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: appColor.button,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: Text("Translate",style: appFont.large.copyWith(color: Colors.white),),
                    ),
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}