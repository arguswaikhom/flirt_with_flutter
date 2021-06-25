import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class InfiniteListViewPaginationPage extends StatefulWidget {
  @override
  _InfiniteListViewPaginationPageState createState() =>
      _InfiniteListViewPaginationPageState();
}

class _InfiniteListViewPaginationPageState
    extends State<InfiniteListViewPaginationPage> {
  static const _pageSize = 0;

  final PagingController<int, ListTile> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      final newItems =
          List<ListTile>.generate(6, (int index) => _getListItem(index));
      final isLastPage = newItems.length < _pageSize;
      if (isLastPage) {
        _pagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = pageKey + newItems.length;
        _pagingController.appendPage(newItems, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Infinite listview'),
        elevation: 0,
      ),
      body: _getBodyWidget(),
    );
  }

  _getBodyWidget() {
    return PagedListView<int, ListTile>(
      pagingController: _pagingController,
      builderDelegate: PagedChildBuilderDelegate<ListTile>(
        itemBuilder: (context, item, index) => _getListItem(index),
      ),
    );
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  ListTile _getListItem(value) {
    return ListTile(
      title: Text("List index $value"),
    );
  }
}
