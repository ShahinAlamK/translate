import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;

class TranslatorController extends GetxController{


  Future<dynamic>fetchTranslator()async{
    Uri uri=Uri.parse("https://google-translate1.p.rapidapi.com/language/translate/v2");
    Map<String,String>header={
      "X-RapidAPI-Key":"2604fd11a1msh4657444b52afde6p1b19a6jsnf7f6af0996a2",
      "content-type":"application/x-www-form-urlencoded",
    };
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