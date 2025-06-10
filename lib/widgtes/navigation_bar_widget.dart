import 'package:flutter/material.dart';
import 'package:quick_comm/screens/home_screen.dart';
import 'package:quick_comm/widgtes/custom_person_button.dart';

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({super.key});

  @override
  State<NavigationBarWidget> createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  int currentIndex = 0;
  final widgetList = [
    HomeScreen(),
    Text('Explore'),
    Text('Favourite'),
    Text('Account'),
    Text('Cart'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QuickEcommerce'),
        centerTitle: true,
        notificationPredicate: (notification) => mounted,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              // Define your colors for the gradient
              colors: [
                Color(0xFF4CAF50),
                Color(0xFF81C784),
                Color(0xFFC8E6C9), // A lighter, yellowish-green
              ],
              // Define where the gradient starts and ends (e.g., top-left to bottom-right)
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        actions: [
          CustomPersonButton(),
        ],
      ),
      body: Center(child: widgetList.elementAt(currentIndex)),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white, // Optional background color
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, -3), // changes position of shadow
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: NavigationBar(
            destinations: [
              NavigationDestination(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
                selectedIcon: Icon(
                  Icons.home_filled,
                  color: Colors.lightGreenAccent,
                ),
              ),
              NavigationDestination(
                icon: Icon(Icons.manage_search),
                label: 'Explore',
                selectedIcon: Icon(
                  Icons.manage_search,
                  color: Colors.lightGreenAccent,
                ),
              ),
              NavigationDestination(
                icon: Icon(Icons.favorite_border),
                label: 'Favourite',
                selectedIcon: Icon(
                  Icons.favorite,
                  color: Colors.lightGreenAccent,
                ),
              ),
              NavigationDestination(
                icon: Icon(Icons.person_outline),
                label: 'Account',
                selectedIcon: Icon(
                  Icons.person,
                  color: Colors.lightGreenAccent,
                ),
              ),
              NavigationDestination(
                icon: Icon(Icons.shopping_cart_outlined),
                label: 'Cart',
                selectedIcon: Icon(
                  Icons.shopping_cart,
                  color: Colors.lightGreenAccent,
                ),
              ),
            ],
            onDestinationSelected: (value) => setState(() {
              currentIndex = value;
            }),
            shadowColor: Colors.green.shade100,
            indicatorColor: Color(0xFF4CAF50),
            selectedIndex: currentIndex,
            elevation: 0,
            height: 60,
          ),
        ),
      ),
    );
  }
}
