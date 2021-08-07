import 'package:flirt_with_flutter/flirt_with_flutter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

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
      body: _getBodyContent(),
    );
  }

  Widget _getBodyContent() {
    final navList = AppNavList.list;

    return ExpansionEntryList(
      children: navList.map<ExpansionEntry>((ExpandableNavGroup nav) {
        return ExpansionEntry(
          headerBuilder: (bool isExpanded) {
            return ListTile(
              title: Text(nav.label),
              leading: Icon(nav.icon),
            );
          },
          body: _getExpandedChildren(nav),
          isExpanded: nav.isExpanded,
        );
      }).toList(),
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          navList[index].isExpanded = !isExpanded;
        });
      },
    );
  }

  Widget _getExpandedChildren(final ExpandableNavGroup nav) {
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
