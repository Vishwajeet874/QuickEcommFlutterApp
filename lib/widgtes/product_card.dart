import 'package:flutter/material.dart';
import 'package:quick_comm/utils/custom_theme.dart';
import 'package:quick_comm/utils/modified_text.dart';

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String productName;
  final String quantity;
  final String deliveryTime;
  final String currentPrice;
  final String? originalPrice; // Optional, for discounted items
  final bool showOffer; // Optional, to show offer badge
  final String? offerPercentage; // Optional, for offer badge text

  const ProductCard({
    super.key,
    required this.imagePath,
    required this.productName,
    required this.quantity,
    required this.deliveryTime,
    required this.currentPrice,
    this.originalPrice,
    this.showOffer = false,
    this.offerPercentage,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product Image with optional offer badge
          Stack(
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(10)),
                child: Image.asset(
                  imagePath,
                  height: 100, // Adjust image height as needed
                  width: double.infinity,
                  fit: BoxFit.fitHeight,
                ),
              ),
              if (showOffer && offerPercentage != null)
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: const BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      offerPercentage!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              // "Previously Bought" label
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(color: Colors.lightGreen.shade500),
                  child: ModifiedText(
                      text: 'Previously Bought', size: 14, color: textMedium),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  quantity,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.access_time,
                        size: 14, color: Colors.green),
                    const SizedBox(width: 4),
                    Text(
                      deliveryTime,
                      style: const TextStyle(
                        color: Colors.green,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      currentPrice,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    if (originalPrice != null) ...[
                      const SizedBox(width: 8),
                      Text(
                        originalPrice!,
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey[500],
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ],
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      // Handle add button tap
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Added $productName to cart!')),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.green, // Text color
                      side:
                          const BorderSide(color: Colors.green), // Border color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('ADD'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
