import 'dart:convert';

UserModel UserModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String UserModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  Data? data;
  bool? status;
  String? message;
  int? statusCode;

  UserModel({this.data, this.status, this.message, this.statusCode});

  UserModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    status = json['status'];
    message = json['message'];
    statusCode = json['statusCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['status'] = status;
    data['message'] = message;
    data['statusCode'] = statusCode;
    return data;
  }
}

class Data {
  int? id;
  String? name;
  String? email;
  String? countryCode;
  String? phone;
  String? avatar;
  String? bloodGroup;
  String? dob;
  String? gender;
  int? rewardPoint;
  String? smartHealthId;
  String? accessToken;
  String? tokenType;

  Data(
      {this.id,
      this.name,
      this.email,
      this.countryCode,
      this.phone,
      this.avatar,
      this.bloodGroup,
      this.dob,
      this.gender,
      this.rewardPoint,
      this.smartHealthId,
      this.accessToken,
      this.tokenType});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    countryCode = json['countryCode'];
    phone = json['phone'];
    avatar = json['avatar'];
    bloodGroup = json['bloodGroup'];
    dob = json['dob'];
    gender = json['gender'];
    rewardPoint = json['rewardPoint'];
    smartHealthId = json['smartHealthId'];
    accessToken = json['accessToken'];
    tokenType = json['tokenType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['countryCode'] = countryCode;
    data['phone'] = phone;
    data['avatar'] = avatar;
    data['bloodGroup'] = bloodGroup;
    data['dob'] = dob;
    data['gender'] = gender;
    data['rewardPoint'] = rewardPoint;
    data['smartHealthId'] = smartHealthId;
    data['accessToken'] = accessToken;
    data['tokenType'] = tokenType;
    return data;
  }
}
