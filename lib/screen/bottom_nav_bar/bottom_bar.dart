import 'package:e_commercefullproject/screen/auth/home_page/homepage.dart';
import 'package:e_commercefullproject/screen/cart_page.dart';
import 'package:e_commercefullproject/screen/categorics_page.dart';
import 'package:e_commercefullproject/screen/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomNavBar extends StatelessWidget {
   BottomNavBar({Key? key}) : super(key: key);

  PersistentTabController _controller=PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {

    return PersistentTabView(

      context,
      onItemSelected: (index){

      },
      controller: _controller,
      screens: buildScreen(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style3, // Choose the nav bar style with this property.
    );
  }

 List<Widget> buildScreen() {
    return [
      HomePage(),
      CategoriesPage(),
      CartPage(),
      ProfilePage()

    ];


  }

   List<PersistentBottomNavBarItem> _navBarsItems() {
     return [
       PersistentBottomNavBarItem(
         icon:Icon(Icons.home_filled),
         title: ("Home"),
         inactiveColorPrimary: Colors.black.withOpacity(0.4),
         activeColorPrimary: Colors.deepPurple,
       ),
       PersistentBottomNavBarItem(
         icon: Icon(Icons.menu),
         title: ("Categories"),
         // activeColorPrimary: Colors.,
         activeColorPrimary: Colors.deepPurple,
         inactiveColorPrimary: Colors.black.withOpacity(0.4),
       ),
       PersistentBottomNavBarItem(
         icon: Icon(Icons.add_shopping_cart),
         title: ("Cart"),
         // activeColorPrimary: Colors.,
         activeColorPrimary: Colors.deepPurple,
         inactiveColorPrimary: Colors.black.withOpacity(0.4),
       ),
       PersistentBottomNavBarItem(
         icon: Icon(Icons.person),
         title: ("Profile"),
         // activeColorPrimary: Colors.,
         activeColorPrimary: Colors.deepPurple,
         inactiveColorPrimary: Colors.black.withOpacity(0.4),
       ),

     ];
   }
}
