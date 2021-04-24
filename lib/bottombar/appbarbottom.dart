import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newapp/screen/homepage.dart';
import 'package:newapp/sharing/sharingpage.dart';
import 'package:newapp/livestream/streaming.dart';
import 'package:newapp/assistant/assistant.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class MainPage extends StatefulWidget {
  static const String id = 'mainpage';
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PersistentTabController _controller;

  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<Widget> _buildScreens() {
    return [HomePage(), SharingPage(), Streaming(), Assistant()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.home,
          size: 23,
        ),
        title: ("Home"),
        activeColorPrimary: Colors.green.shade400,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.share,
          size: 23,
        ),
        title: ("Sharing"),
        activeColorPrimary: Colors.green.shade400,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.live_tv_sharp,
          size: 23,
        ),
        title: ("Live Str..."),
        activeColorPrimary: Colors.green.shade400,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.person,
          size: 23,
        ),
        title: ("Assistant"),
        activeColorPrimary: Colors.green.shade400,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  // Widget _pageChooser(int page) {
  //   switch (page) {
  //     case 0:
  //       return _homePage;
  //       break;
  //     case 1:
  //       return _earningsPage;
  //       break;
  //     case 2:
  //       return _ratingPage;
  //       break;
  //     case 3:
  //       return _profilePage;
  //       break;
  //     default:
  //       return new Container(
  //           child: new Center(
  //               child:
  //                   new Text("No page found", style: TextStyle(fontSize: 30))));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      // navBarHeight: 90.0,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears.
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument.

      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style3, // Choose the nav bar style with this property.
    );
  }

  // buildNavBarItem(IconData icon, int index, String text) {
  //   return Container(
  //     decoration: BoxDecoration(
  //       border: Border(top: BorderSide(width: .5, color: HexColor("d2d2d2"))),
  //     ),
  //     child: InkWell(
  //       onTap: () {
  //         setState(() {
  //           _selectedItemIndex = index;
  //         });
  //         setState(() {
  //           _showPage = _pageChooser(index);
  //         });
  //       },
  //       child: Container(
  //         width: MediaQuery.of(context).size.width / 4,
  //         height: 60,
  //         decoration: index == _selectedItemIndex
  //             ? BoxDecoration(
  //                 color: Colors.white,
  //                 border: Border(
  //                     top: BorderSide(width: 2, color: HexColor("0066F5"))),
  //                 gradient: LinearGradient(colors: [
  //                   HexColor("0066F5").withOpacity(0.014),
  //                   HexColor("0066F5").withOpacity(0.02),
  //                 ], begin: Alignment.bottomCenter, end: Alignment.topCenter))
  //             : BoxDecoration(
  //                 color: Colors.white,
  //               ),
  //         // child: Icon(
  //         //   icon,
  //         //   color: index == _selectedItemIndex ? Color(0XFF00B868) : Colors.grey,
  //         // ),
  //         // Text(
  //         //   "Home"
  //         // )
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: <Widget>[
  //             Icon(
  //               icon,
  //               color: index == _selectedItemIndex
  //                   ? Colors.blue
  //                   : HexColor("d2d2d2"),
  //             ),
  //             SizedBox(height: 3),
  //             Text(text,
  //                 style: index == _selectedItemIndex
  //                     ? TextStyle(
  //                         fontWeight: FontWeight.w700,
  //                         fontSize: 10,
  //                         color: HexColor("0066F5"))
  //                     : TextStyle(fontWeight: FontWeight.w700, fontSize: 10))
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
