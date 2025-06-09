import 'package:flutter/material.dart';

class CustomPersonButton extends StatelessWidget {
  const CustomPersonButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // This container mimics the subtle shadow and octagon-like background
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.green.shade200,
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      padding: EdgeInsets.all(3.0), // Padding to make the inner circle smaller
      child: Material(
        color: Colors.white, // The actual white circle of the button
        shape: CircleBorder(),
        elevation: 5.0, // For the subtle raised effect of the main button
        child: InkWell(
          onTap: () {
            print('Button tapped!');
            // Add your button's functionality here
          },
          customBorder: CircleBorder(), // Ensures ripple effect is circular

          // Adjust padding for icon size
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.person,
              // Dark grey/black color for the icon
              size: 30, // Adjust icon size as needed
            ),
          ),
        ),
      ),
    );
  }
}
