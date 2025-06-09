import 'package:flutter/material.dart';
import 'package:quick_comm/utils/modified_text.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() {
    // TODO: implement createState
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Icon(
              Icons.food_bank_rounded,
              size: 35,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.location_on,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'NewDelhi India',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
