import 'package:flutter/material.dart';
import 'package:quick_comm/data/categoriesData.dart';
import 'package:quick_comm/utils/custom_theme.dart';
import 'package:quick_comm/utils/modified_text.dart';

import '../widgtes/search_button.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade100,
        foregroundColor: Colors.transparent,
        title: ModifiedText(
          text: 'Find Products',
          size: 28,
          color: textDark,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 5),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadiusDirectional.circular(50),
              ),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Find Stores,products..',
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding: EdgeInsets.all(10),
                  fillColor: Colors.greenAccent,
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            GridView.builder(
              itemCount: categoriesGroceriesData.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.95),
              itemBuilder: (context, index) {
                return Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,
                    ),
                    child: Center(
                      child: ModifiedText(
                          text: 'Item $index', color: Colors.white, size: 16),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
