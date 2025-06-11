import 'package:flutter/material.dart';
import 'package:quick_comm/utils/custom_theme.dart';
import 'package:quick_comm/utils/modified_text.dart';

class CategoryCard extends StatelessWidget {
  final String text;
  final String? imagePath;

  const CategoryCard({super.key, required this.text, this.imagePath});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imagePath!), fit: BoxFit.cover),
                border: Border.all(color: Colors.lightGreenAccent),
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: ModifiedText(text: text, size: 14, color: textDark),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
