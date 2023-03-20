// ignore_for_file: prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';

import 'menu.dart';

class AmsSideBar extends StatefulWidget {
  final Widget? child;
  const AmsSideBar({Key? key, this.child}) : super(key: key);

  @override
  State<AmsSideBar> createState() => _AmsDrawerState();
}

class _AmsDrawerState extends State<AmsSideBar> {
  int selectedIndex = -1;
  bool isExpanded = true;
  TextStyle? get _textStyle => Theme.of(context).textTheme.bodyText2;
  String version = '';

  void loadMenu() {
    final link = window.location.href;
    for (MenuItem item in menuItems) {
      if (item.children != null) {
        List<MenuItem> children = item.children!;
        if (children.isNotEmpty == true) {
          for (MenuItem sub in children) {
            if (link.contains(sub.path as String)) {
              sub.isSelected = true;
              item.isSelected = true;
            }
          }
        }
      } else {
        if (link.contains(item.path as String)) {
          item.isSelected = true;
        }
      }
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    loadMenu();
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
          height: double.infinity,
          child: isExpanded ? expandedMenu() : collapseMenu()),
      Expanded(
        child: Stack(
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 25, top: 18, right: 25),
                child: widget.child),
            invisibleSubMenus()
          ],
        ),
      )
    ]);
  }

  Widget expandedMenu() {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      //TODO: update dimens size common
      width: 264,
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              shrinkWrap: true,
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                final menuItem = menuItems[index];
                var color = _checkColor(menuItem.isSelected);
                return menuItem.children == null
                    ? Padding(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        child: _menuItemTitle(menuItem,
                            onTap: () => {
                                  menuItem.onTap?.call(),
                                }),
                      )
                    : Theme(
                        data: ThemeData().copyWith(
                          dividerColor: Colors.transparent,
                        ),
                        child: ListTileTheme(
                          horizontalTitleGap: 0,
                          minLeadingWidth: 0,
                          iconColor: color,
                          minVerticalPadding: 0,
                          child: ExpansionTile(
                            iconColor: color,
                            initiallyExpanded: !menuItem.isExpanded,
                            leading: Padding(
                                padding: const EdgeInsets.only(right: 12),
                                child: Icon(menuItem.icon, color: color)),
                            title: Text(
                              menuItem.title,
                              maxLines: 1,
                              style: _textStyle!.copyWith(
                                color: color,
                              ),
                            ),
                            children: menuItem.children!
                                .map((child) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: _menuItemTitle(child,
                                          onTap: () => {
                                                menuItem.isSelected = true,
                                              },
                                          menuItemParent: menuItem,
                                          isChild: true),
                                    ))
                                .toList(),
                          ),
                        ),
                      );
              },
            ),
          ),
          _buildBottomMenu()
        ],
      ),
    );
  }

  Widget _buildBottomMenu() {
    return SizedBox(
      child: InkWell(
        onTap: expandOrShrinkDrawer,
        child: Padding(
          padding: EdgeInsets.only(bottom: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(
              //   width: 28,
              // ),
              Icon(Icons.menu),
              if (isExpanded)
                SizedBox(
                  width: 28,
                ),
              if (isExpanded)
                Flexible(
                  child: Text('Ver 1.0.1',
                      maxLines: 1,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          ?.copyWith(color: Colors.black12)),
                ),
              // SizedBox(
              //   width: 28,
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _menuItemTitle(MenuItem menuItem,
      {required Set<bool> Function() onTap,
      MenuItem? menuItemParent,
      bool? isChild}) {
    return InkWell(
      onTap: () {
        menuItem.onTap?.call();
        setState(() {
          clearSelected();
          menuItem.isSelected = true;
        });
        if (menuItemParent != null) {
          setState(() {
            menuItemParent.isSelected = true;
          });
        }
      },
      child: ClipRect(
        child: Row(
          children: [
            const SizedBox(
              width: 16,
            ),
            if (menuItem.icon != null)
              Icon(
                menuItem.icon,
                size: 16,
                color: _checkColor(menuItem.isSelected),
              ),
            if (menuItem.icon != null)
              const SizedBox(
                width: 8,
              ),
            if (isChild != null)
              const SizedBox(
                width: 35,
              ),
            Flexible(
              child: Text(
                menuItem.title,
                maxLines: 1,
                style: _textStyle!.copyWith(
                  color: _checkColor(menuItem.isSelected),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget collapseMenu() {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: 84,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: menuItems.length,
                itemBuilder: (contex, index) {
                  var menuItem = menuItems[index];
                  return InkWell(
                      onHover: (value) {
                        if (value) {
                          setState(() {
                            selectedIndex = index;
                          });
                        }
                      },
                      onTap: () {
                        if (menuItem.children != null &&
                            menuItem.children!.isNotEmpty) {
                          setState(() {
                            selectedIndex = index;
                          });
                        } else {
                          menuItem.onTap?.call();
                          setState(() {
                            clearSelected();
                            menuItem.isSelected = true;
                          });
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        child: Container(
                            height: 44,
                            decoration: BoxDecoration(
                              color: _checkColor(menuItem.isSelected,
                                  activeColor: Colors.red,
                                  inactiveColor: Colors.white),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(16)),
                            ),
                            alignment: Alignment.center,
                            child: Icon(menuItem.icon,
                                color: _checkColor(menuItem.isSelected))),
                      ));
                }),
          ),
          _buildBottomMenu()
        ],
      ),
    );
  }

  Widget invisibleSubMenus() {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      //TODO: update dimens size common
      width: isExpanded ? 0 : (selectedIndex == -1 ? 0 : 232),
      color: Colors.transparent,
      child: Column(
        children: [
          Container(height: 85),
          ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                var item = menuItems[index];
                bool selected = selectedIndex == index;
                bool isValidSubMenu = selected &&
                    item.children != null &&
                    item.children!.isNotEmpty;
                return subMenuWidget(item.children, isValidSubMenu, item);
              }),
        ],
      ),
    );
  }

  Widget subMenuWidget(
      List<MenuItem>? submenus, bool isValidSubMenu, MenuItem parent) {
    return isValidSubMenu
        ? MouseRegion(
            onExit: (event) {
              setState(() {
                selectedIndex = -1;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: submenus!.length.toDouble() * 45,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: isValidSubMenu ? Colors.white : Colors.transparent,
                // boxShadow: _shadow,
              ),
              child: ListView.builder(
                  itemCount: submenus.length,
                  itemBuilder: (context, index) {
                    var subMenu = submenus[index];
                    return sMenuButton(subMenu, index == 0, parent);
                  }),
            ),
          )
        : Container(
            height: 60,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
          );
  }

  bool subMenuSelected = false;

  Widget sMenuButton(MenuItem subMenu, bool isTitle, MenuItem parent) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          subMenu.isSelected = true;
        });
      },
      onExit: (event) {
        setState(() {
          if (!subMenuSelected) {
            subMenu.isSelected = false;
          }
          subMenuSelected = false;
        });
      },
      child: InkWell(
        onTap: () {
          setState(() {
            clearSelected();
            subMenu.isSelected = true;
            parent.isSelected = true;
            subMenuSelected = true;
          });
        },
        child: Container(
          decoration: BoxDecoration(
              color: _checkColor(subMenu.isSelected,
                  activeColor: Colors.red, inactiveColor: Colors.white)),
          height: 45,
          child: Center(
            child: Text(
              subMenu.title,
              style:
                  _textStyle!.copyWith(color: _checkColor(subMenu.isSelected)),
            ),
          ),
        ),
      ),
    );
  }

  void clearSelected() {
    for (MenuItem item in menuItems) {
      if (item.children != null) {
        List<MenuItem> children = item.children!;
        if (children.isNotEmpty == true) {
          for (MenuItem sub in children) {
            sub.isSelected = false;
          }
        }
      }
      item.isSelected = false;
    }
  }

  Color? _checkColor(bool check,
      {Color? activeColor = Colors.red, Color? inactiveColor = Colors.grey}) {
    return check ? activeColor : inactiveColor;
  }

  void expandOrShrinkDrawer() {
    setState(() {
      selectedIndex = -1;
      isExpanded = !isExpanded;
    });
  }
}
