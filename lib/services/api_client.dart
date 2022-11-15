// import 'package:dio/dio.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class Client {
//   Dio init() {
//     Dio _dio = Dio();
//     _dio.interceptors.add(ApiInterceptors());
//     _dio.options.baseUrl = "http://mern.online:4005/";
//     return _dio;
//   }
// }

// class ApiInterceptors extends Interceptor {
//   @override
//   void onRequest(
//       RequestOptions options, RequestInterceptorHandler handler) async {
//     super.onRequest(options, handler);

//     final preference = await SharedPreferences.getInstance();
//     final key = 'token';
//     var token = preference.getString(key);

//     if (token != null) {
//       options.headers["Authorization"] = "Bearer $token";
//     }
//   }
// }

// // class Client2 {
//   //static String token = SharedToken().token_read();

// //   Dio init() {
// //     Dio _dio = Dio();
// //     _dio.interceptors.add(ApiInterceptors());
// //     _dio.options.baseUrl = "https://ecom-flyweis.herokuapp.com";
// //     return _dio;
// //   }
// // }

// // class ApiInterceptors2 extends Interceptor {
// //   @override
// //   void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
// //     super.onRequest(options, handler);
// //     if (Client.token != "") {
// //       options.headers["Authorization"] = "Bearer ${Client.token}";
// //     }
// //   }
// // }
