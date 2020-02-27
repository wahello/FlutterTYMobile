import 'package:connectivity/connectivity.dart';
import 'package:data_connection_checker/data_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
  Future<ConnectivityResult> get checkType;
}

class NetworkInfoImpl implements NetworkInfo {
  final DataConnectionChecker connectionChecker;

  NetworkInfoImpl(this.connectionChecker);

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;

  @override
  Future<ConnectivityResult> get checkType =>
      Connectivity().checkConnectivity();
}
