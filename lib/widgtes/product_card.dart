import 'package:flutter/material.dart';
import 'package:quick_comm/utils/custom_theme.dart';
import 'package:quick_comm/utils/modified_text.dart';

class ProductCard extends StatefulWidget {
  const ProductCard(
      {super.key,
      required String imagePath,
      required String title,
      required String quantity,
      required String price})
      : _imagePath = imagePath,
        _title = title,
        _quantity = quantity,
        _price = price;

  final String _imagePath;
  final String _title;
  final String _quantity;
  final String _price;
  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      width: 150,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: primaryGreen, width: 3.0),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 100,
                width: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget._imagePath), fit: BoxFit.cover),
                ),
              ),
            ),
            ModifiedText(text: widget._title, size: 14, color: textDark),
            ModifiedText(text: widget._quantity, size: 12, color: textMedium),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ModifiedText(
                    text: "\u20B9${widget._price}", size: 16, color: textDark),
                SizedBox(
                  height: 40,
                  child: FloatingActionButton(
                    heroTag: widget._title,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onPressed: () {},
                    child: Icon(Icons.add),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
