import 'package:flirt_with_flutter/res/app_string.dart';
import 'package:flutter/material.dart';

class ToggleTabPage extends StatefulWidget {
  @override
  _ToggleTabPageState createState() => _ToggleTabPageState();
}

class _ToggleTabPageState extends State<ToggleTabPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(AppString.titleToggleTab),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                ),
                child: TabBar(
                  // give the indicator a decoration (color and border radius)
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Colors.green,
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    Tab(text: 'First'),
                    Tab(text: 'Second'), // second tab bar view widget
                    Tab(text: 'Third'), // second tab bar view widget
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('First')),
            Center(child: Text('Second')),
            Center(child: Text('Third')),
          ],
        ),
      ),
    );
  }
}
