import 'package:flutter/material.dart';
import 'package:quick_comm/data/vegfruitsData.dart';
import 'package:quick_comm/utils/custom_theme.dart';
import 'package:quick_comm/utils/modified_text.dart';
import 'package:quick_comm/widgtes/sideicon.dart';

class CustomSideBarScreen extends StatefulWidget {
  const CustomSideBarScreen({super.key});

  @override
  State<CustomSideBarScreen> createState() => _CustomSideBarScreenState();
}

class _CustomSideBarScreenState extends State<CustomSideBarScreen> {
  int _selectedCategoryIndex = 0;
  List<Widget> _pages = [];

  @override
  void initState() {
    super.initState();
    _pages = [
      Text('Page1'),
      Text('Page1'),
      Text('Page1'),
      Text('Page1'),
      Text('Page1'),
      Text('Page1'),
      Text('Page1'),
      Text('Page1'),
      Text('Page1'),
      Text('Page1'),
      Text('Page1'),
      Text('Page1'),
      Text('Page1'),
      Text('Page1'),
      Text('Page1'),
      Text('Page1'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ModifiedText(
            text: 'Vegetables & Fruits', size: 20, color: textDark),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: Row(
        children: <Widget>[
          Container(
            width: 100,
            color: Colors.grey[50],
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: VegFruitsData.asMap().entries.map((entry) {
                  int index = entry.key;
                  Map<String, dynamic> category = entry.value;
                  bool isSelected = index == _selectedCategoryIndex;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedCategoryIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SideIcon(imagePath: category['imagePath']),
                                  SizedBox(
                                    width: 80,
                                    child: Text(
                                      category['label'],
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: isSelected
                                            ? Theme.of(context)
                                                .colorScheme
                                                .primary
                                            : Colors.grey[800],
                                        fontWeight: isSelected
                                            ? FontWeight.bold
                                            : FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.linear,
                            width: isSelected ? 4 : 0,
                            height: isSelected ? 100 : 0,
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: _pages[_selectedCategoryIndex],
            ),
          ),
        ],
      ),
    );
  }
}
