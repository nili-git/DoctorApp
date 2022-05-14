import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:doctorapp/Feature4/sharedpreferencepage.dart';
import 'package:doctorapp/api3/model2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DioClientss {
  List<Data> hosdata = [];

  Future loginData(dynamic data) async {
    final Dio _dio = Dio(
      BaseOptions(
        baseUrl: "https://devapi.smarthealthnepal.com/api",
        connectTimeout: 4000,
        receiveTimeout: 3000,
      ),
    );
    var response = await _dio.post("/auth/login",
        data: jsonEncode(data),
        options: Options(headers: {
          "accept": "application/json",
          "Authorization": "Bearer $token",
        }));

    // print(jsonDecode(response.data));
    // print(data);
    UserModel listPostModel = UserModel.fromJson(response.data);
    print(listPostModel.data!.accessToken);

    SharedPreferences login = await SharedPreferences.getInstance();
    //sharedprefrences data save
    //login.setString('token', listPostModel.data!.accessToken!);
    HelperClass().setToken("token", listPostModel.data!.accessToken);

    return (listPostModel);
  }
}
