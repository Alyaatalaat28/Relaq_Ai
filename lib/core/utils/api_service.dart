import 'package:dio/dio.dart';
import 'package:relaq_ai/core/utils/end_points.dart';
class DioHelper{

static Dio dio=Dio();

 static Future<Response> sendMessage( {required Map<String,dynamic> data}) async {
    return await dio.post(
      baseUrl,
      data:data,
         options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $apiKey',
          },
        ),
    );
    
 }
    }