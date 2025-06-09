import 'package:flutter/material.dart';

import 'package:quick_comm/utils/custom_theme.dart';
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
      home: NavigationBarWidget(),
    );
  }
}
