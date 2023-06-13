import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:quick_puzzle/models/services/user/user_modal.dart';

import '../../configs/themes/app_colors.dart';
import '../../configs/themes/app_icons_icons.dart';
import '../../configs/themes/custom_text_styles.dart';
import '../../configs/themes/ui_parameters.dart';
import '../../widgets/common/content_area.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<UserModal> users = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    users
      ..add(const UserModal(
          firstName: "Hue",
          lastName: "Tran",
          emailId: "hue@gmail.com",
          isActive: true))
      ..add(const UserModal(
          firstName: "Tran",
          lastName: "Anh",
          emailId: "anh@",
          isActive: false));
    debugPrint("users $users");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: mainGradient(context)),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(kMobileScreenPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Transform.translate(
                    //   offset: const Offset(-10, 0),
                    //   child: CircularButton(
                    //     child: const Icon(AppIcons.menuleft),
                    //     onTap: controller.toggleDrawer,
                    //   ),
                    // ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          const Icon(AppIcons.peace),
                          Builder(
                            builder: (_) {
                              // final AuthController _auth = Get.find();
                              final user = null;
                              String _label = '  Hello mate';
                              if (user != null) {
                                _label = '  Hello ${user.displayName}';
                              }
                              return Text(_label,
                                  style: kDetailsTS.copyWith(
                                      color: kOnSurfaceTextColor));
                            },
                          ),
                        ],
                      ),
                    ),
                    const Text('What Do You Want To Improve Today ?',
                        style: kHeaderTS),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: ContentArea(
                    addPadding: false, child: Text("34242"),
                    // child: Obx(
                    //   () => LiquidPullToRefresh(
                    //     height: 150,
                    //     springAnimationDurationInMilliseconds: 500,
                    //     //backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
                    //     color: Theme.of(context).primaryColor.withOpacity(0.5),
                    //     onRefresh: () async {
                    //       // _quizePprContoller.getAllPapers();
                    //     }, child: Text("q4234"),
                    //     // child: ListView.separated(
                    //     //   padding: UIParameters.screenPadding,
                    //     //   shrinkWrap: true,
                    //     //   itemCount: _quizePprContoller.allPapers.length,
                    //     //   itemBuilder: (BuildContext context, int index) {
                    //     //     return QuizPaperCard(
                    //     //       model: _quizePprContoller.allPapers[index],
                    //     //     );
                    //     //   },
                    //     //   separatorBuilder: (BuildContext context, int index) {
                    //     //     return const SizedBox(
                    //     //       height: 20,
                    //     //     );
                    //     //   },
                    //     // ),
                    //   ),
                    // ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
