import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:responsi_mobile_lanjut/ui/akun_view.dart';
import 'package:responsi_mobile_lanjut/ui/beranda_view.dart';
import 'package:responsi_mobile_lanjut/ui/login_view.dart';
// import 'package:responsi/ui/account.dart';
// import 'package:responsi/ui/home.dart';
// import 'package:responsi/ui/login.dart';

class NavPersistent extends StatelessWidget {
  const NavPersistent({super.key});

  List<PersistentBottomNavBarItem> _navBarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: 'Home',
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.account_circle),
        title: 'Account',
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.settings),
        title: 'Logout',
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  PersistentTabController _controller() {
    return PersistentTabController(initialIndex: 0);
  }

  List<Widget> _screens() {
    return [
      const HomeView(),
      const AkunView(),
      Container(),
    ];
  }

  void _onNavBarTap(int index, BuildContext context) {
    if (index == 2) {
      // Navigate to the login screen and remove the bottom nav bar
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginView()),
      );
    } else {
      // Handle other taps if necessary
    }
  }

  List<PersistentBottomNavBarItem> _navBarItem() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: 'Home',
        activeColorPrimary: CupertinoColors.activeBlue,
        activeColorSecondary: CupertinoColors.white,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.account_circle),
        title: 'Account',
        activeColorPrimary: CupertinoColors.activeBlue,
        activeColorSecondary: CupertinoColors.white,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.logout),
        title: 'Logout',
        activeColorPrimary: CupertinoColors.activeBlue,
        activeColorSecondary: CupertinoColors.white,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller(),
      screens: _screens(),
      items: _navBarItem(),
      onItemSelected: (index) => _onNavBarTap(index, context),
      hideNavigationBarWhenKeyboardAppears: true,
      backgroundColor: const Color(0xffF3EDF7),
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
      navBarStyle: NavBarStyle.style2,
      navBarHeight: kBottomNavigationBarHeight,
    );
  }
}
