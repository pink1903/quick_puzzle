import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:quick_puzzle/utilities/bloc_observer.dart';
import 'package:quick_puzzle/utilities/network/network_helper.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import 'app_dependencies.dart';
import 'routers/app_router.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final isInitialCompleted = await _initApp();

  Bloc.observer = AMSBlocObserver();
  debugPrint("isInitialCompleted $isInitialCompleted ");
  runApp(MyApp(isInitialCompleted: isInitialCompleted,));

}

class MyApp extends StatelessWidget {
  final _appRouter = AppDependencies.injector.get<AppRouter>();
  final bool isInitialCompleted;
   MyApp({super.key,  required this.isInitialCompleted});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: EasyLoading.init(
        builder: (context, child) => ResponsiveWrapper.builder(
          child,
          minWidth: 480,
          // defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(480, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          ],
        ),
      ),
    );
  }
}


Future<bool> _initApp() async {
  try {
    final bool result = await AppDependencies.initialize();
    await NetworkHelper.initConnectivity();
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 2000)
      ..indicatorType = EasyLoadingIndicatorType.fadingCircle
      ..animationStyle = EasyLoadingAnimationStyle.scale
      ..loadingStyle = EasyLoadingStyle.custom
      ..indicatorSize = 55.0
      ..radius = 10.0
      ..progressColor = Colors.green
      ..backgroundColor = Colors.transparent
      ..boxShadow = [const BoxShadow(color: Colors.transparent)]
      ..indicatorColor = Colors.green
      ..textColor = Colors.green
      ..maskColor = Colors.black.withOpacity(0.25)
      ..maskType = EasyLoadingMaskType.custom
      ..userInteractions = false
      ..dismissOnTap = false;
    return result;
  } catch (e) {
    return false;
  }
}
