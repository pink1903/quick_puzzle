import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

// import '../blocs/env/configuration_cubit.dart';
import '../routers/app_router.dart';
// import '../widgets/bottom_bar/custom_bottom_bar.dart';
// import '../widgets/bottom_bar/custom_tabs_router.dart';
// import '../widgets/commons/after_layout.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();
  }

  // @override
  // void afterFirstLayout(BuildContext context) {
  //   AppDependencies.injector.get<ConfigurationCubit>().sendActivity();
  // }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        DocumentsRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Iconsax.home)),
            BottomNavigationBarItem(
                label: 'Documents', icon: Icon(Iconsax.home)),
          ],
        );
      },
    );
  }
}
