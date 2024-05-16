import 'package:flutter/material.dart';
import 'package:show_case/Presentation/Components/show_case_widget.dart';

import '../../../../Data/Models/home_page_model.dart';
import '../../../Declarations/constants.dart';

class ListViewBldr extends StatefulWidget {
  const ListViewBldr({Key? key, required this.globaleKey}) : super(key: key);

  final GlobalKey globaleKey;
  @override
  State<ListViewBldr> createState() => _ListViewBldrState();
}

class _ListViewBldrState extends State<ListViewBldr> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listData.length,
        itemBuilder: (context, index) {
          return index == 0
              ? buildShowcaseView(index)
              : buildnonShowcaseView(index);
        });
  }

  Widget buildShowcaseView(int index) => Card(
        child: ListTile(
          leading: ShowCaseView(
            globalKey: widget.globaleKey,
            title: 'Profile Picture',
            description: 'User\'s profile picture appears here.',
            child: CircleAvatar(
              backgroundColor: secondaryColor.withOpacity(0.25),
              child: Text(
                listData[index].name[0],
                style: TextStyle(color: primaryColor),
              ),
            ),
          ),
          title: Text(listData[index].name),
          subtitle: Text(listData[index].description),
          trailing: Text(listData[index].time),
        ),
      );

  Widget buildnonShowcaseView(int index) => Card(
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: secondaryColor.withOpacity(0.25),
            child: Text(
              listData[index].name[0],
              style: TextStyle(color: primaryColor),
            ),
          ),
          title: Text(listData[index].name),
          subtitle: Text(listData[index].description),
          trailing: Text(listData[index].time),
        ),
      );
}
