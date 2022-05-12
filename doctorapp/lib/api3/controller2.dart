import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:doctorapp/api3/model2.dart';

class DioClientss {
  List<Data> hosdata = [];

  Future loginData(dynamic data) async {
    final Dio _dio = Dio(
      BaseOptions(
        baseUrl: "http://127.0.0.1:8000/api/",
        // baseUrl: "https://devapi.smarthealthnepal.com/api",
        connectTimeout: 4000,
        receiveTimeout: 3000,
      ),
    );
    var response = await _dio.post("/auth/login/",
        data: jsonEncode(data),
        options: Options(headers: {"accept": "application/json"}));

    print(jsonDecode(response.data));

    UserModel listPostModel = UserModel.fromJson(response.data);
    return (listPostModel);

    // hosdata.addAll(listPostModel.data!);
    // return hosdata;
  }
}
