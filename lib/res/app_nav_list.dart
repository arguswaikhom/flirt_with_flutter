import 'package:flirt_with_flutter/model/expandable_nav_group.dart';
import 'package:flirt_with_flutter/model/title_nav.dart';
import 'package:flirt_with_flutter/page/biting_stream_builder_page.dart';
import 'package:flirt_with_flutter/page/infinite_list_view_panigation_page.dart';
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
