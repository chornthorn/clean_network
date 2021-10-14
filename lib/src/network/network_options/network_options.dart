import '../../../clean_network.dart';

class NetworkOptions {
  void Function(int, int)? onReceiveProgress;

  NetworkOptions({this.onReceiveProgress});
}

abstract class NETWORK_METHOD {
  static const String GET = "GET";
  static const String POST = "POST";
  static const String PUT = "PUT";
  static const String DELETE = "DELETE";
}

typedef FeatureResponse<T, E extends Exception> = Future<Result<T, E>>;