import 'package:flirt_with_flutter/model/expandable_nav_group.dart';
import 'package:flirt_with_flutter/model/title_nav.dart';
import 'package:flirt_with_flutter/page/biting_stream_builder_page.dart';
import 'package:flirt_with_flutter/page/infinite_list_view_panigation_page.dart';
import 'package:flirt_with_flutter/page/tab/icon_and_text_tab_page.dart';
import 'package:flirt_with_flutter/page/tab/icon_tab_page.dart';
import 'package:flirt_with_flutter/page/tab/rounded_corner_with_border_tab_page.dart';
import 'package:flirt_with_flutter/page/tab/text_tab_page.dart';
import 'package:flirt_with_flutter/page/tab/toggle_tab_page.dart';
import 'package:flirt_with_flutter/res/app_string.dart';
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
    ExpandableNavGroup(
      label: AppString.titleNavTab,
      icon: Icons.tab,
      children: [
        TitleNav(
          label: AppString.titleIconTab,
          page: IconTabPage(),
        ),
        TitleNav(
          label: AppString.titleTextTab,
          page: TextTabPage(),
        ),
        TitleNav(
          label: AppString.titleIconAndTextTab,
          page: IconAndTextTabPage(),
        ),
        TitleNav(
          label: AppString.titleRoundedCornerWithBorderTab,
          page: RoundedCornerWithBorderTabPage(),
        ),
        TitleNav(
          label: AppString.titleToggleTab,
          page: ToggleTabPage(),
        )
      ],
    ),
  ];
}
