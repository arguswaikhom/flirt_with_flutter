import 'package:flutter/material.dart';

class AppNav {
  final String label;
  final IconData icon;
  final Widget page;
  final List<AppNav> children;
  bool isExpanded = false;

  AppNav({
    @required this.label,
    this.icon,
    this.page,
    this.children,
  });
}
