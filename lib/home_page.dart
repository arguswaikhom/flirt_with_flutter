import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Color(0xfff2f2f2),
      padding: const EdgeInsets.all(16.0),
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: Image.asset('assets/images/logo.png'),
            title: Row(
              children: [
                Text('Flirt with Flutter'),
                const SizedBox(width: 32.0),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                      shape: BoxShape.rectangle,
                    ),
                    child: TextField(
                      textCapitalization: TextCapitalization.sentences,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            actions: [
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add),
                label: const Text('Project'),
              ),
              const SizedBox(width: 16.0),
              CircleAvatar(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
              )
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    TabBar(
                      isScrollable: true,
                      labelColor: Colors.black,
                      tabs: [
                        Tab(child: const Text('Application')),
                        Tab(child: const Text('Package')),
                        Tab(child: const Text('Plugin')),
                      ],
                    ),
                    Spacer(),
                    Chip(
                      avatar: FaIcon(FontAwesomeIcons.android),
                      label: Text('Android'),
                      deleteIcon: Icon(Icons.cancel),
                      deleteIconColor: Colors.grey,
                      onDeleted: () {},
                    ),
                    const SizedBox(width: 8.0),
                    Chip(
                      avatar: FaIcon(FontAwesomeIcons.apple),
                      label: Text('IOS'),
                      deleteIcon: Icon(Icons.cancel),
                      deleteIconColor: Colors.grey,
                      onDeleted: () {},
                    ),
                    const SizedBox(width: 8.0),
                    Chip(
                      avatar: FaIcon(FontAwesomeIcons.globeAsia),
                      label: Text('Web'),
                      deleteIcon: Icon(Icons.cancel),
                      deleteIconColor: Colors.grey,
                      onDeleted: () {},
                    ),
                    const SizedBox(width: 8.0),
                    IconButton(
                      onPressed: () {},
                      icon: FaIcon(FontAwesomeIcons.filter),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: Container(),
        ),
      ),
    );
  }
}
