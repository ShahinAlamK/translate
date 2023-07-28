class LanguageModel {
  String? language;
  String? code;
  String? flag;

  LanguageModel({this.language, this.code, this.flag});

  LanguageModel.fromJson(Map<String, dynamic> json) {
    language = json['language'];
    code = json['code'];
    flag = json['flag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['language'] = this.language;
    data['code'] = this.code;
    data['flag'] = this.flag;
    return data;
  }
}


List<LanguageModel>languageList=[
  LanguageModel(
    language: "Bangla",
    code: "bn",
    flag: ""
  ),
  LanguageModel(
    language: "Hindi",
    code: "hi",
    flag: ""
  ),

  LanguageModel(
    language: "English",
    code: "en",
    flag: ""
  ),
];