import 'package:clean_network/src/freezed/network_error.dart';
import 'package:clean_network/src/freezed/result.dart';
import 'package:clean_network/src/network/interfaces/base_client_generator.dart';
import 'package:clean_network/src/network/interfaces/base_network_model.dart';
import 'package:clean_network/src/network/network_options/network_options.dart';
import 'package:dio/dio.dart';

import 'network_connectivity.dart';
import 'network_creator.dart';
import 'network_decoder.dart';

class NetworkExecuter {
  static bool debugMode = true;

  static Future<Result<K, NetworkError>> execute<T extends BaseNetworkModel, K>(
      {required BaseClientGenerator route,
      required T responseType,
      NetworkOptions? options}) async {
    if (debugMode) print(route);

    // Check Network Connectivity
    if (await NetworkConnectivity.status) {
      try {
        var response = await NetworkCreator.shared.request(
          route: route,
          options: options,
        );
        var data = NetworkDecoder.shared.decode<T, K>(
          response: response,
          responseType: responseType,
        );
        return Result.success(data);

        // NETWORK ERROR
      } on DioError catch (diorError) {
        if (debugMode)
          print("$route => ${NetworkError.request(error: diorError)}");
        return Result.failure(NetworkError.request(error: diorError));

        // TYPE ERROR
      } on TypeError catch (e) {
        if (debugMode)
          print("$route => ${NetworkError.type(error: e.toString())}");
        return Result.failure(NetworkError.type(error: e.toString()));
      }

      // No Internet Connection
    } else {
      if (debugMode)
        print(NetworkError.connectivity(message: 'No Internet Connection'));
      return Result.failure(
          NetworkError.connectivity(message: 'No Internet Connection'));
    }
  }
}
