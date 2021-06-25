import 'package:flirt_with_flutter/model/ExpandableNavGroup.dart';
import 'package:flirt_with_flutter/model/TitleNav.dart';
import 'package:flirt_with_flutter/page/BitingStreamBuilderPage.dart';
import 'package:flirt_with_flutter/page/InfiniteListViewPaginationPage.dart';
import 'package:flutter/material.dart';

class AppNavList {
  static final List<ExpandableNavGroup> list = <ExpandableNavGroup>[
    ExpandableNavGroup(
      label: "Listview",
      icon: Icons.list_alt_rounded,
      children: [
        TitleNav(
          label: "Infinite listview",
          page: InfiniteListViewPaginationPage(),
        )
      ],
    ),
    ExpandableNavGroup(
      label: "Test pages",
      icon: Icons.list_alt_rounded,
      children: [
        TitleNav(
          label: "Biting stream builder",
          page: BitingStreamBuilderPage(),
        )
      ],
    ),
  ];
}
