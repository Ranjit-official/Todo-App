import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:to_dos/features/home/ui/screens/home_page_screen.dart';
import 'package:to_dos/features/profile/ui/screen/profile_screen.dart';

class DashBoardWidget extends StatefulWidget {
  const DashBoardWidget({super.key});

  @override
  State<DashBoardWidget> createState() => _DashBoardWidgetState();
}

class _DashBoardWidgetState extends State<DashBoardWidget> {
  NavBarStyle _navBarStyle = NavBarStyle.style15;
  late PersistentTabController _controller;
  late bool _hideNavBar;
  final List<ScrollController> _scrollControllers = [
    ScrollController(),
    ScrollController(),
  ];

  Color? _getSecondaryItemColorForSpecificStyles() =>
      _navBarStyle == NavBarStyle.style7 ||
              _navBarStyle == NavBarStyle.style10 ||
              _navBarStyle == NavBarStyle.style15 ||
              _navBarStyle == NavBarStyle.style16 ||
              _navBarStyle == NavBarStyle.style17 ||
              _navBarStyle == NavBarStyle.style18
          ? Colors.white
          : null;

  final List<Widget> _screens = <Widget>[
    HomePageScreen(),
    HomePageScreen(),
    HomePageScreen(),
    HomePageScreen(),
    ProfilePage(),
  ];

  List<PersistentBottomNavBarItem> _navBarsItems() => [
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.home_rounded),
          title: "Home",
          opacity: 0.7,
          activeColorPrimary: Colors.blue,
          inactiveColorPrimary: Colors.grey,
          scrollController: _scrollControllers.first,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.calendar_month_outlined),
          title: "Calendar",
          activeColorPrimary: Colors.teal,
          activeColorSecondary: _navBarStyle == NavBarStyle.style7 ||
                  _navBarStyle == NavBarStyle.style10
              ? Colors.white
              : null,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.add),
          title: "Add",
          activeColorPrimary: Colors.blueAccent,
          inactiveColorPrimary: Colors.grey,
          activeColorSecondary: _getSecondaryItemColorForSpecificStyles(),
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.alarm_rounded),
          title: "Focus",
          activeColorPrimary: Colors.deepOrange,
          inactiveColorPrimary: Colors.grey,
          activeColorSecondary: _navBarStyle == NavBarStyle.style7 ||
                  _navBarStyle == NavBarStyle.style10
              ? Colors.white
              : null,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.person_2_outlined),
          title: "Profile",
          activeColorPrimary: Colors.indigo,
          inactiveColorPrimary: Colors.grey,
          activeColorSecondary: _navBarStyle == NavBarStyle.style7 ||
                  _navBarStyle == NavBarStyle.style10
              ? Colors.white
              : null,
          scrollController: _scrollControllers.last,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(context,
        screens: _screens,
        items: _navBarsItems(),
        padding: const EdgeInsets.only(top: 8),
        navBarHeight: kBottomNavigationBarHeight,
        backgroundColor: Colors.black,
        navBarStyle: _navBarStyle);
  }
}
