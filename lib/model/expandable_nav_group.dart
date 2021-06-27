import 'package:flutter/material.dart';

import 'title_nav.dart';

class ExpandableNavGroup {
  final String label;
  final IconData icon;
  final List<TitleNav> children;
  bool isExpanded = false;

  ExpandableNavGroup({
    @required this.label,
    @required this.icon,
    @required this.children,
  });
}
