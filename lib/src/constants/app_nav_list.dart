import 'package:flirt_with_flutter/flirt_with_flutter.dart';
import 'package:flutter/material.dart';

class AppNavList {
  static final List<ExpandableNavGroup> list = <ExpandableNavGroup>[
    ExpandableNavGroup(
      label: AppString.titleNavTab,
      icon: Icons.tab,
      children: [
        TitleNav(
          label: AppString.titleToggleTab,
          page: ToggleTabPage(),
        )
      ],
    ),
    ExpandableNavGroup(
      label: AppString.titleImage,
      icon: Icons.image,
      children: [
        TitleNav(
          label: AppString.titleAvatarImage,
          page: AvatarPage(),
        )
      ],
    ),
    ExpandableNavGroup(
      label: kASTitleAuth,
      icon: Icons.security,
      children: [
        TitleNav(
          label: kASTitleAuth,
          page: SignUpUser(),
        )
      ],
    ),
  ];
}
