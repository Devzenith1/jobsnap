import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:untitled/screens/formpage.dart';
import 'package:untitled/screens/jobpage.dart';
import 'package:untitled/screens/searchcatergory.dart';

class bottombar extends StatefulWidget {
  const bottombar({Key? key}) : super(key: key);

  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  List<Widget> _buildScreens() {
    return [
      jobhomepage(),
      searchpage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        //scrollController: _scrollController1,
        // routeAndNavigatorSettings: RouteAndNavigatorSettings(
        //   initialRoute: "/",
        //   routes: {
        //     "/first": (final context) => const MainScreen2(),
        //     "/second": (final context) => const MainScreen3(),
        //   },
        onPressed: (p0) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => jobhomepage(),
              ));
        },
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.settings),
        title: ("Settings"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        onPressed: (p0) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => myformpage(),
              ));
        },
        //scrollController: _scrollController2,
        // routeAndNavigatorSettings: RouteAndNavigatorSettings(
        //   initialRoute: "/",
        //   routes: {
        //     "/first": (final context) => const MainScreen2(),
        //     "/second": (final context) => const MainScreen3(),
        //   },
      ),
    ];
  }

  late PersistentTabController _controller;
  @override
  void initState() {
    _controller = PersistentTabController(initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen on a non-scrollable screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardAppears: true,
      //popBehaviorOnSelectedNavBarItemPress: PopActionScreensType.all,
      padding: const EdgeInsets.only(top: 8),
      backgroundColor: Colors.grey.shade900,
      isVisible: true,
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          duration: Duration(milliseconds: 200),
          screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
        ),
      ),
      confineToSafeArea: true,
      navBarHeight: kBottomNavigationBarHeight,
      //navBarStyle: _navBarStyle, // Choose the nav bar style with this property
    );
  }
}
