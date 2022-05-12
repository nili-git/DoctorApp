import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:doctorapp/api/model/model.dart';


List<Data> hosdata=[];

class DioClient{
  List<Data> hosdata=[];
Future<List<Data>> userserverrequest() async {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: "https://devapi.smarthealthnepal.com/api",
      connectTimeout: 4000,
      receiveTimeout: 3000,
      ),
  );
   // var response = await _dio.get("/districts/" );
     var response = await _dio.get("/specialities/" );
    print(response.data);


        UserModel  listPostModel =
           UserModel.fromJson(response.data);
          hosdata.addAll(listPostModel.data!);
          return hosdata;
        // UserModel  listPostModel =
        //    UserModel.fromJson(response.data);
        //   return listPostModel;
  
}
}
