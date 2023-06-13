import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';

import '../../blocs/main_frame_cubit.dart';

abstract class BaseCubitStatefulWidget extends StatefulWidget {
  const BaseCubitStatefulWidget({Key? key}) : super(key: key);
}

@RoutePage()
class MainFramePage extends BaseCubitStatefulWidget {
  const MainFramePage({super.key});

  @override
  State<MainFramePage> createState() => _MainFramePageState();
}

abstract class BaseCubitStateFulWidgetState<B extends BaseCubit,
        S extends BaseCubitStatefulWidget> extends State<S>
    with WidgetsBindingObserver, AutomaticKeepAliveClientMixin<S> {
  final B bloc = GetIt.I.get<B>();

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    bloc.loadingStream.listen((event) {
      if (event) {
        EasyLoading.show();
      } else {
        EasyLoading.dismiss();
      }
    });

    bloc.errorStream.listen((event) {
      showErrorMessage(context, event);
    });
    bloc.initState();
    super.initState();
  }

  @override
  bool get wantKeepAlive => false;

  @override
  void didChangeDependencies() {
    bloc.didChangeDependencies();
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    bloc.close();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        onResume();
        break;
      case AppLifecycleState.paused:
        onPause();
        break;
      case AppLifecycleState.inactive:
        onInactive();
        break;
      default:
        onDetach();
    }
    super.didChangeAppLifecycleState(state);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
        appBar: buildAppbar(context),
        drawer: buildDrawer(context),
        body: buildBody(context));
  }

  @mustCallSuper
  void onResume() {
    bloc.onResume();
  }

  @mustCallSuper
  void onPause() {
    bloc.onPause();
  }

  @mustCallSuper
  void onDetach() {
    bloc.onDetach();
  }

  @mustCallSuper
  void onInactive() {
    bloc.onInactive();
  }

  Widget buildBody(BuildContext context);
  Widget? buildShimmer(BuildContext context) {}
  PreferredSizeWidget? buildAppbar(BuildContext context) {}
  Widget? buildDrawer(BuildContext context) {}
  void showErrorMessage(BuildContext context, String message) {}
}

class _MainFramePageState
    extends BaseCubitStateFulWidgetState<MainFrameCubit, MainFramePage> {
  @override
  void initState() {
    super.initState();
    // bloc.getUserInfo();
  }

  // @override
  // Widget? buildShimmer(BuildContext context) => const HeaderShimmer();

  @override
  Widget buildBody(BuildContext context) {
    return BlocProvider(
        create: (context) => bloc,
        // child: const SideBar(
        //   child: AutoRouter(),
        // )
        child: const AutoRouter());
  }

  Widget _buildHeader({String userName = '', int notifyCount = 0}) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, top: 12, right: 24),
      child: Row(children: [
        SvgPicture.asset(
          'assets/images/ic_menu.svg',
          fit: BoxFit.scaleDown,
          width: 40,
          height: 40,
          alignment: Alignment.center,
        ),
        const Spacer(),
        Text(
          userName,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          width: 20,
        ),
        SvgPicture.asset(
          'assets/images/ic_avatar.svg',
          fit: BoxFit.scaleDown,
          width: 24,
          height: 24,
          alignment: Alignment.center,
        ),
        const SizedBox(
          width: 20,
        ),
        Stack(
          alignment: Alignment.topRight,
          children: [
            SvgPicture.asset(
              'assets/images/ic_notify.svg',
              fit: BoxFit.scaleDown,
              width: 24,
              height: 24,
              alignment: Alignment.centerLeft,
            ),
            if (notifyCount > 0)
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              )
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        SvgPicture.asset(
          'assets/images/ic_logout.svg',
          fit: BoxFit.scaleDown,
          width: 24,
          height: 24,
          alignment: Alignment.center,
        ),
      ]),
    );
  }
}
