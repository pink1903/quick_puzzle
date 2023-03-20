import 'package:flutter/material.dart';

final List<MenuItem> menuItems = [
  MenuItem(
    title: 'dashboard',
    icon: Icons.home,
    router: '',
    path: 'dashboard',
  ),
  MenuItem(
      title: 'manage-requests',
      icon: Icons.map,
      children: [
        MenuItem(title: 'onboarding', router: '', path: 'onboarding'),
      ],
      isExpanded: true)
];

class MenuItem {
  final String title;
  final String? path;
  final IconData? icon;
  final List<MenuItem>? children;
  final Function()? onTap;
  final dynamic router;
  bool isSelected;
  bool isExpanded;

  MenuItem({
    required this.title,
    this.path,
    this.icon,
    this.children,
    this.onTap,
    this.isSelected = false,
    this.router,
    this.isExpanded = false,
  });
}
