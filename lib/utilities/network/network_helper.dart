import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';

import '../../app_dependencies.dart';

class NetworkHelper {
  static bool networkAvailable = false;
  static late StreamSubscription<ConnectivityResult>? _networkSubscription;

  static Future<bool> networkVariable() async {
    final connectivity =
        await AppDependencies.injector.get<Connectivity>().checkConnectivity();
    return connectivity != ConnectivityResult.none;
  }

  static Future<void> initConnectivity() async {
    final connectivity = AppDependencies.injector.get<Connectivity>();
    try {
      networkAvailable =
          (await connectivity.checkConnectivity()) != ConnectivityResult.none;
      _networkSubscription =
          connectivity.onConnectivityChanged.listen((result) async {
        networkAvailable = result != ConnectivityResult.none;
      });
    } on Exception catch (e) {
      debugPrint("${e.toString()}");
    }
    return;
  }

  void dispose() {
    _networkSubscription?.cancel();
  }
}
