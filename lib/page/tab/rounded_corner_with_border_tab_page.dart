import 'package:flirt_with_flutter/flirt_with_flutter.dart';
import 'package:flutter/material.dart';

class RoundedCornerWithBorderTabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(AppString.titleRoundedCornerWithBorderTab),
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TabBar(
                  isScrollable: true,
                  unselectedLabelColor: Colors.redAccent,
                  labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.redAccent,
                  ),
                  tabs: [
                    _getTabWidget('APPS'),
                    _getTabWidget('MOVIES'),
                    _getTabWidget('GAMES'),
                    _getTabWidget('BOOKS'),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.apps),
            Icon(Icons.movie),
            Icon(Icons.games),
            Icon(Icons.book),
          ],
        ),
      ),
    );
  }

  Widget _getTabWidget(String label) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        border: Border.all(color: Colors.redAccent),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(label),
      ),
    );
  }
}
