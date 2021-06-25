import 'package:flirt_with_flutter/model/AppNav.dart';
import 'package:flirt_with_flutter/res/AppNavList.dart';
import 'package:flirt_with_flutter/res/AppString.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(AppString.appName),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: _getBodyContent(),
        ),
      ),
    );
  }

  _getBodyContent() {
    final navList = AppNavList.list;

    return ExpansionPanelList(
      elevation: 0,
      expansionCallback: (index, isExpanded) {
        setState(() {
          navList[index].isExpanded = !isExpanded;
        });
      },
      children: navList.map<ExpansionPanel>(
        (AppNav nav) {
          return ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                title: Text(nav.label),
                leading: Icon(nav.icon),
              );
            },
            body: _getExpandedChildren(nav),
            isExpanded: nav.isExpanded,
          );
        },
      ).toList(),
    );
  }

  _getExpandedChildren(final AppNav nav) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: nav.children.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(left: 42, bottom: 4, right: 42),
          child: InkWell(
            child: Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    nav.children[index].label,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Divider()
              ],
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => nav.children[index].page,
              ),
            ),
          ),
        );
      },
    );
  }
}
