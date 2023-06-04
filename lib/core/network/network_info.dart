import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

@injectable
class NetworkInfo {
  final Connectivity connectivity;

  NetworkInfo(this.connectivity);

  Future<bool> isConnected() async {
    var connectivityResult = await (connectivity.checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    } else if (connectivityResult == ConnectivityResult.ethernet) {
      return true;
    }
    return false;
  }
}
