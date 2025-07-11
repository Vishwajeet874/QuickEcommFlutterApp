import 'package:flutter/material.dart';
import 'package:quick_comm/utils/custom_theme.dart';
import 'package:quick_comm/utils/modified_text.dart';

class AddSubtractWidget extends StatefulWidget {
  final int productCount;
  const AddSubtractWidget({super.key, required this.productCount});

  @override
  State<AddSubtractWidget> createState() => _AddSubtractWidgetState();
}

class _AddSubtractWidgetState extends State<AddSubtractWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.remove,
              color: primaryGreenDark,
            ),
          ),
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                10,
              ),
              border: Border.all(color: textMedium),
            ),
            child: Center(
              child: ModifiedText(
                  text: "${widget.productCount}", size: 18, color: textDark),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
              color: primaryGreenDark,
            ),
          ),
        ],
      ),
    );
  }
}
