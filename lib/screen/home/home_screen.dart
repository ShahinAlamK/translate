import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:translate/controller/translator_controller.dart';
import 'package:translate/screen/home/widget/language.dart';
import 'package:translate/screen/home/widget/translator_result.dart';
import 'package:translate/style/color.dart';
import 'package:translate/style/fonts.dart';

import '../../style/size.dart';
import '../../widget/country.dart';
import 'widget/typing_language.dart';

enum Side{left,right}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
   final res= Get.put(TranslatorController());
   res.fetchTranslator();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor:appColor.bg,
        title: Text("Language Translator",style:appFont.large,),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(height: 20),
            Language(),

            SizedBox(height: 20),
            TypingLanguage(),

            SizedBox(height: 20),
            TranslatorResult(),

          ],
        ),
      ),
    );
  }
}








