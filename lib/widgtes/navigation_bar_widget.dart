import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart'; // Import the package
import 'package:quick_comm/screens/home_screen.dart';
import 'package:quick_comm/widgtes/custom_person_button.dart';

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({super.key});

  @override
  State<NavigationBarWidget> createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  int currentIndex =
      0; // _page is often used with CurvedNavigationBar, but currentIndex works too
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final widgetList = [
    HomeScreen(),
    const Text('Explore'), // Added const for Text widgets
    const Text('Favourite'),
    const Text('Account'),
    const Text('Cart'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QuickEcommerce'), // Added const
        centerTitle: true,
        notificationPredicate: (notification) => mounted,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF4CAF50),
                Color(0xFF81C784),
                Color(0xFFC8E6C9),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        actions: const [
          // Added const
          CustomPersonButton(),
        ],
      ),
      body: Center(child: widgetList.elementAt(currentIndex)),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: currentIndex,
        height: 60.0,
        items: const <Widget>[
          Icon(Icons.home_outlined, size: 30, color: Colors.white),
          Icon(Icons.manage_search, size: 30, color: Colors.white),
          Icon(Icons.favorite_border, size: 30, color: Colors.white),
          Icon(Icons.person_outline, size: 30, color: Colors.white),
          Icon(Icons.shopping_cart_outlined, size: 30, color: Colors.white),
        ],
        color: const Color(0xFF4CAF50),
        buttonBackgroundColor: const Color(0xFF81C784),
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
