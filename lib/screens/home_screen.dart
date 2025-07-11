import 'package:flutter/material.dart';
import 'package:quick_comm/screens/all_tab_screen.dart';
import 'package:quick_comm/utils/custom_theme.dart';
import 'package:quick_comm/utils/modified_text.dart';
import 'package:quick_comm/widgtes/search_button.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() {
    // TODO: implement createState
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade100,
        foregroundColor: Colors.transparent,
        title: ModifiedText(
          text: 'Quick Commerce',
          size: 28,
          color: textDark,
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.card_travel_rounded),
            ),
            Tab(
              icon: Icon(Icons.liquor),
            ),
            Tab(
              icon: Icon(Icons.medical_information),
            ),
            Tab(
              icon: Icon(Icons.flatware_outlined),
            ),
          ],
          indicatorSize: TabBarIndicatorSize.tab,
          dividerHeight: 0.5,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const <Widget>[
                AllTabScreen(),
                Center(
                  child: Text('Movie Tab Content'),
                ),
                Center(
                  child: Text('Account Tab Content'),
                ),
                Center(
                  child: Text('People Tab Content'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
