import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:doctorapp/api2/model/model1.dart';

class DioClients {
  List<Data> hosdata = [];

  Future<List<Data>> userserverrequest() async {
    final Dio _dio = Dio(
      BaseOptions(
        baseUrl: "https://devapi.smarthealthnepal.com/api",
        connectTimeout: 4000,
        receiveTimeout: 3000,
      ),
    );
    var response = await _dio.get("/districts/");
    // var response = await _dio.get("/specialities/" );
    // print(jsonDecode(response.data));

    UserModel listPostModel = UserModel.fromJson(response.data);
    hosdata.addAll(listPostModel.data!);
    return hosdata;
  }

  Future submitData(dynamic data) async {
    final Dio _dio = Dio(
      BaseOptions(
        baseUrl: "https://devapi.smarthealthnepal.com/api",
        connectTimeout: 4000,
        receiveTimeout: 3000,
      ),
    );
    var response = await _dio.post("/ambulance/add/",
        data: jsonEncode(data),
        options: Options(headers: {"accept": "application/json"}));

    if (response.statusCode == 200) {
      // return UserModelFromJson(response.data);
    } else {
      throw Error();
    }
    //  print(response.statusCode);
    // return response.data;
    // print(jsonDecode(response.data));

    // if (response.statusCode == 200) {
    //   return UserModelFromJson(response.data);
    // } else {
    //   return null;
    // }

    // print(response.statusCode);
  }

  //   //  print(response.statusCode);
  //   // return response.data;
  //   // print(jsonDecode(response.data));

  // }
}
