import 'package:flutter/material.dart';
import 'package:quick_comm/screens/all_tab_screen.dart';
import 'package:quick_comm/screens/home_screen.dart';

import 'package:quick_comm/utils/custom_theme.dart';
import 'package:quick_comm/utils/navigation_rail_screen.dart';
import 'package:quick_comm/screens/customsidebar_screen.dart';

import 'package:quick_comm/widgtes/navigation_bar_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: 'Quick Ecommerce',
        theme: CustomTheme(),
        home: NavigationBarWidget());
  }
}
