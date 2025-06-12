import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quick_comm/utils/custom_theme.dart';
import 'package:quick_comm/utils/modified_text.dart';

class NavigationRailScreen extends StatefulWidget {
  const NavigationRailScreen({super.key, required this.title});

  final String title;

  @override
  State<NavigationRailScreen> createState() => _NavigationRailScreenState();
}

class _NavigationRailScreenState extends State<NavigationRailScreen> {
  int _selectedIndex = 0;

  final List<NavigationRailDestination> _destinations = const [
    NavigationRailDestination(
      icon: Icon(Icons.home_outlined),
      selectedIcon: Icon(Icons.home),
      label: Text('Home'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.favorite_border),
      selectedIcon: Icon(Icons.favorite),
      label: Text('Favorites'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.settings_outlined),
      selectedIcon: Icon(Icons.settings),
      label: Text('Settings'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.settings_outlined),
      selectedIcon: Icon(Icons.settings),
      label: Text('Settings'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.settings_outlined),
      selectedIcon: Icon(Icons.settings),
      label: Text('Settings'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.settings_outlined),
      selectedIcon: Icon(Icons.settings),
      label: Text('Settings'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.settings_outlined),
      selectedIcon: Icon(Icons.settings),
      label: Text('Settings'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.settings_outlined),
      selectedIcon: Icon(Icons.settings),
      label: Text('Settings'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.settings_outlined),
      selectedIcon: Icon(Icons.settings),
      label: Text('Settings'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.settings_outlined),
      selectedIcon: Icon(Icons.settings),
      label: Text('Settings'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.settings_outlined),
      selectedIcon: Icon(Icons.settings),
      label: Text('Settings'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.settings_outlined),
      selectedIcon: Icon(Icons.settings),
      label: Text('Settings'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.settings_outlined),
      selectedIcon: Icon(Icons.settings),
      label: Text('Settings'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.settings_outlined),
      selectedIcon: Icon(Icons.settings),
      label: Text('Settings'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.settings_outlined),
      selectedIcon: Icon(Icons.settings),
      label: Text('Settings'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.settings_outlined),
      selectedIcon: Icon(Icons.settings),
      label: Text('Settings'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.settings_outlined),
      selectedIcon: Icon(Icons.settings),
      label: Text('Settings'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.settings_outlined),
      selectedIcon: Icon(Icons.settings),
      label: Text('Settings'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.settings_outlined),
      selectedIcon: Icon(Icons.settings),
      label: Text('Settings'),
    ),
  ];

  final List<Widget> _pages = const [
    Center(
        child: Text('You are on the Home Page',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
    Center(
        child: Text('You are on the Favorites Page',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
    Center(
        child: Text('You are on the Settings Page',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
  ];
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final appBarHeight = AppBar().preferredSize.height;
    final topPadding = MediaQuery.of(context).padding.top;
    final totalAvailableHeight = screenHeight - appBarHeight - topPadding;
    return Scaffold(
      appBar: AppBar(
        title: ModifiedText(
          text: widget.title,
          size: 18,
          color: textDark,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Row(
        children: <Widget>[
          SizedBox(
            height: totalAvailableHeight,
            child: NavigationRail(
              selectedIndex: _selectedIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              destinations: _destinations,
              labelType: NavigationRailLabelType.all,
              backgroundColor:
                  Theme.of(context).colorScheme.surfaceContainerHigh,
              selectedIconTheme: IconThemeData(
                  color: Theme.of(context).colorScheme.onPrimaryContainer),
              selectedLabelTextStyle: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                  fontWeight: FontWeight.bold),
              unselectedIconTheme: IconThemeData(
                  color: Theme.of(context).colorScheme.onSurfaceVariant),
              unselectedLabelTextStyle: TextStyle(
                  color: Theme.of(context).colorScheme.onSurfaceVariant),
              indicatorColor: Theme.of(context).colorScheme.primaryContainer,
              indicatorShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),
          const VerticalDivider(
            thickness: 0.1,
            width: 1,
            color: Colors.black,
          ),
          Expanded(
            child: _pages[_selectedIndex],
          ),
        ],
      ),
    );
  }
}
