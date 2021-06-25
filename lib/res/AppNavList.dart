import 'package:flirt_with_flutter/model/AppNav.dart';
import 'package:flirt_with_flutter/page/BitingStreamBuilderPage.dart';
import 'package:flirt_with_flutter/page/InfiniteListViewPaginationPage.dart';
import 'package:flutter/material.dart';

class AppNavList {
  static final List<AppNav> list = <AppNav>[
    AppNav(
      label: "Listview",
      icon: Icons.list_alt_rounded,
      children: [
        AppNav(
          label: "Infinite listview",
          page: InfiniteListViewPaginationPage(),
        )
      ],
    ),
    AppNav(
      label: "Test pages",
      icon: Icons.list_alt_rounded,
      children: [
        AppNav(
          label: "Biting stream builder",
          page: BitingStreamBuilderPage(),
        )
      ],
    ),
  ];
}
