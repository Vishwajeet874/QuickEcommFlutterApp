import 'package:flutter/material.dart';
import 'package:quick_comm/widgtes/product_card.dart';

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({super.key, required this.categoryData});

  final List<Map<String, dynamic>> categoryData;

  @override
  Widget build(BuildContext context) {
    categoryData.shuffle();
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,

        crossAxisSpacing: 10.0, // Spacing between columns

        mainAxisSpacing: 10.0, // Spacing between rows

        childAspectRatio: 0.75,
      ),
      // ... gridDelegate and itemBuilder as before ...
      itemCount:
          categoryData.length, // <--- IMPORTANT: You'll need to replace this
      // with the actual number of products for the specific category.
      itemBuilder: (context, productIndex) {
        final product = categoryData[productIndex];
        // This is where you would fetch and pass actual product data
        // based on the selected category (index).
        return ProductCard(
          title: product['title'],
          imagePath: product['imagePath'],
          price: product['price'],
          quantity: product['quantity'],
        );
      },
    );
  }
}
