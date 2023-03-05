import 'package:flutter/cupertino.dart';
import 'package:quick_puzzle/models/services/user/user_modal.dart';

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
    return const Text("2312312");
  }
}
