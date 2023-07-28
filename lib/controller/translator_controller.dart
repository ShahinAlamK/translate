import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;

class TranslatorController extends GetxController{


  Future<dynamic>fetchTranslator()async{
    Uri uri=Uri.parse("https://google-translate1.p.rapidapi.com/language/translate/v2");
    Map<String,String>header={}
    final body={
      "q":"Hello World",
      "target":"bn",
      "source":"en"
    };
    try{
      final response=await http.post(uri,headers: header,body:body);
      print(response.body);
    }catch(error){
      print(error);
    }
  }
}