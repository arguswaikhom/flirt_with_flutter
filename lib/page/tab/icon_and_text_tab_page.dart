import 'package:flirt_with_flutter/res/app_string.dart';
import 'package:flutter/material.dart';

class IconAndTextTabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppString.titleIconAndTextTab),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.directions_car),
                text: 'Tab 1',
              ),
              Tab(
                icon: Icon(Icons.directions_transit),
                text: 'Tab 2',
              ),
              Tab(
                icon: Icon(Icons.directions_bike),
                text: 'Tab 3',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Tab 1')),
            Center(child: Text('Tab 2')),
            Center(child: Text('Tab 3'))
          ],
        ),
      ),
    );
  }
}
