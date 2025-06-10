import 'package:flutter/material.dart';
import 'package:quick_comm/utils/custom_theme.dart';
import 'package:quick_comm/utils/modified_text.dart';

class CardImage extends StatelessWidget {
  final String imagePath;
  final String featuredText;

  const CardImage(
      {super.key, required this.imagePath, required this.featuredText});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: primaryGreen, width: 3.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: [
            Image.asset(
              imagePath,
              height: 120,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 5,
              left: 0,
              right: 0,
              child: Center(
                child: ModifiedText(
                  text: featuredText,
                  size: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
