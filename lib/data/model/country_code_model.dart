class CountryCodeModel {
  List<Data>? data;

  CountryCodeModel({this.data});

  CountryCodeModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? countryCode;
  String? countryName;
  String? callingCode;
  String? flagEmoji;

  Data({this.countryCode, this.countryName, this.callingCode, this.flagEmoji});

  Data.fromJson(Map<String, dynamic> json) {
    countryCode = json['country_code'];
    countryName = json['country_name'];
    callingCode = json['calling_code'];
    flagEmoji = json['flag_emoji'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['country_code'] = countryCode;
    data['country_name'] = countryName;
    data['calling_code'] = callingCode;
    data['flag_emoji'] = flagEmoji;
    return data;
  }
}