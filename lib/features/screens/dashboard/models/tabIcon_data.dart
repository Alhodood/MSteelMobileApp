import 'package:flutter/material.dart';

class TabIconData {
  TabIconData({
    this.imagePath = '',
    this.index = 0,
    this.selectedImagePath = '',
    this.isSelected = false,
    this.animationController,
  });

  String imagePath;
  String selectedImagePath;
  bool isSelected;
  int index;

  AnimationController? animationController;

  static List<TabIconData> tabIconsList = <TabIconData>[
    TabIconData(
      imagePath: 'assets/maintenance_app/dashboard.png',
      selectedImagePath: 'assets/maintenance_app/dashboard_selected.png',
      index: 0,
      isSelected: true,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/maintenance_app/work_orders.png',
      selectedImagePath: 'assets/maintenance_app/work_orders_selected.png',
      index: 1,
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/maintenance_app/inventory.png',
      selectedImagePath: 'assets/maintenance_app/inventory_selected.png',
      index: 2,
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/maintenance_app/settings.png',
      selectedImagePath: 'assets/maintenance_app/settings_selected.png',
      index: 3,
      isSelected: false,
      animationController: null,
    ),
  ];
}
