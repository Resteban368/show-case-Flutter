import 'package:flutter/material.dart';

import '../../../Declarations/constants.dart';

class AppBarAction extends StatelessWidget {
  const AppBarAction(
      {Key? key, required this.icondata, required this.appBarFun})
      : super(key: key);

  final IconData icondata;
  final Function appBarFun;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kHPadding,
      child: CircleAvatar(
        backgroundColor: secondaryColor.withOpacity(0.5),
        child: IconButton(
          icon: Icon(icondata),
          color: Colors.white,
          onPressed: () => appBarFun(),
        ),
      ),
    );
  }
}
