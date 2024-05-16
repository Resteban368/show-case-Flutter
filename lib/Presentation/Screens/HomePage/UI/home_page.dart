import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';

import '../../../Components/app_bar.dart';
import '../../../Components/show_case_widget.dart';
import '../../../Declarations/constants.dart';
import '../Widgets/a_app_bar_action.dart';
import '../Widgets/b_list_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey globalKeyOne = GlobalKey();
  final GlobalKey globalKeyTwo = GlobalKey();
  final GlobalKey globalKeyThree = GlobalKey();
  final GlobalKey globalKeyFour = GlobalKey();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) =>
        ShowCaseWidget.of(context).startShowCase(
            [globalKeyOne, globalKeyTwo, globalKeyThree, globalKeyFour]));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        appBarTitle: widget.title,
        centerTitle: false,
        actionWidgets: [
          ShowCaseView(
              globalKey: globalKeyOne,
              title: 'Notifications',
              description: 'All your notifications appear here.',
              child: AppBarAction(
                  icondata: Icons.notifications, appBarFun: () {})),
          ShowCaseView(
              globalKey: globalKeyTwo,
              title: 'Profile',
              description: 'Edit your profile details here.',
              child: AppBarAction(icondata: Icons.person, appBarFun: () {}))
        ],
      ),
      body: ListViewBldr(globaleKey: globalKeyThree),
      floatingActionButton: ShowCaseView(
        globalKey: globalKeyFour,
        title: 'Add Users',
        description: 'Add new user data by clicking this button.',
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: primaryColor,
          child: const Icon(Icons.add, color: Colors.white),
        ),
      ),
    );
  }
}
