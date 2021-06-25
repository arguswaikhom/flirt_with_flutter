import 'package:flutter/material.dart';

import 'TitleNav.dart';

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
