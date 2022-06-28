
import 'package:dio/dio.dart';

class Requests {

  static bool logged = false;

  String? requestMessage;

  static BaseOptions options = BaseOptions(
    connectTimeout: 10000,
    receiveTimeout: 10000,
    sendTimeout: 10000,
    headers: {}
  );

  Dio dio = Dio(options);

  Response? requestResponse;

  
}