import 'dart:io';
import 'package:clean_network/src/network/interfaces/base_client_generator.dart';
import 'package:clean_network/src/network/network_options/network_options.dart';
import 'package:dio/dio.dart';

class NetworkCreator {
  static var shared = NetworkCreator();
  final Dio _client = Dio();

  Future<Response> request(
      {required BaseClientGenerator route, NetworkOptions? options}) {
    return _client.fetch(
      RequestOptions(
        baseUrl: route.baseURL,
        method: route.method,
        path: route.path,
        queryParameters: route.queryParameters,
        data: route.body,
        sendTimeout: route.sendTimeout,
        receiveTimeout: route.sendTimeout,
        onReceiveProgress: options?.onReceiveProgress,
        validateStatus: (statusCode) => (statusCode! >= HttpStatus.ok &&
            statusCode <= HttpStatus.multipleChoices),
      ),
    );
  }
}
