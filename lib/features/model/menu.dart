import 'package:flutter/material.dart';
import 'package:msteelmobileapp/features/screens/dashboard/dashboard_main.dart';
import 'package:msteelmobileapp/features/screens/dashboard/my_diary_screen.dart';
import 'package:msteelmobileapp/features/screens/overview/overview.dart';
import 'package:msteelmobileapp/features/screens/home/home_screen.dart';
import 'package:msteelmobileapp/features/screens/profile/profile.dart';
import 'package:msteelmobileapp/features/screens/projects/component/home_page.dart';
import 'package:msteelmobileapp/features/screens/projects/component/profile_page.dart';

import 'rive_model.dart';

class Menu {
  final String title;
  final RiveModel rive;
  final Widget? screen;

  Menu({required this.title, required this.rive, this.screen});
}

List<Menu> sidebarMenus = [
  Menu(
    title: "Home",
    rive: RiveModel(
      src: "assets/RiveAssets/icons.riv",
      artboard: "HOME",

      stateMachineName: "HOME_interactivity",
    ),
    // screen: HomePage(),
  ),
  Menu(
    title: "Search",
    rive: RiveModel(
      src: "assets/RiveAssets/icons.riv",
      artboard: "SEARCH",

      stateMachineName: "SEARCH_Interactivity",
    ),

    //  screen: Profile(),
  ),
  Menu(
    title: "Favorites",
    rive: RiveModel(
      src: "assets/RiveAssets/icons.riv",
      artboard: "LIKE/STAR",
      stateMachineName: "STAR_Interactivity",
    ),
  ),
  Menu(
    title: "Help",
    rive: RiveModel(
      src: "assets/RiveAssets/icons.riv",
      artboard: "CHAT",
      stateMachineName: "CHAT_Interactivity",
    ),
  ),
];
List<Menu> sidebarMenus2 = [
  Menu(
    title: "History",
    rive: RiveModel(
      src: "assets/RiveAssets/icons.riv",
      artboard: "TIMER",
      stateMachineName: "TIMER_Interactivity",
    ),
  ),
  Menu(
    title: "Notifications",
    rive: RiveModel(
      src: "assets/RiveAssets/icons.riv",
      artboard: "BELL",
      stateMachineName: "BELL_Interactivity",
    ),
  ),
];

List<Menu> bottomNavItems = [
  Menu(
    title: "Chat",
    rive: RiveModel(
      src: "assets/RiveAssets/icons.riv",
      artboard: "CHAT",
      stateMachineName: "CHAT_Interactivity",
    ),
    screen: HomePage(),
  ),
  Menu(
    title: "Search",
    rive: RiveModel(
      src: "assets/RiveAssets/icons.riv",
      artboard: "SEARCH",
      stateMachineName: "SEARCH_Interactivity",
    ),
    screen: Profile(),
  ),
  Menu(
    title: "Timer",
    rive: RiveModel(
      src: "assets/RiveAssets/icons.riv",
      artboard: "TIMER",
      stateMachineName: "TIMER_Interactivity",
    ),
    screen: OverviewScreen(),
  ),
  Menu(
    title: "Notification",
    rive: RiveModel(
      src: "assets/RiveAssets/icons.riv",
      artboard: "BELL",
      stateMachineName: "BELL_Interactivity",
    ),
    screen: ProjectHomePage(),
  ),
  Menu(
    title: "Profile",
    rive: RiveModel(
      src: "assets/RiveAssets/icons.riv",
      artboard: "USER",
      stateMachineName: "USER_Interactivity",
    ),
    screen: EmployeePage(),
  ),
   Menu(
    title: "Profile",
    rive: RiveModel(
      src: "assets/RiveAssets/icons.riv",
      artboard: "USER",
      stateMachineName: "USER_Interactivity",
    ),
    screen:DashboardMainScreen(),
  ),
];
