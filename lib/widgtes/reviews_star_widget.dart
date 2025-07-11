import 'package:flutter/material.dart';
import 'package:quick_comm/utils/custom_theme.dart';

import '../utils/modified_text.dart';

class ReviewStars extends StatelessWidget {
  final double rating; // Rating from 0.0 to 5.0
  final int reviewCount; // Total number of reviews
  final double starSize;

  const ReviewStars({
    super.key,
    required this.rating,
    required this.reviewCount,
    this.starSize = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min, // Ensure the row takes minimum space
      children: List.generate(5, (index) {
        if (index < rating.floor()) {
          // Full star
          return Icon(Icons.star, color: Colors.amber, size: starSize);
        } else if (index < rating && rating - index > 0) {
          // Half star if exists
          return Icon(Icons.star_half, color: Colors.amber, size: starSize);
        } else {
          // Empty star
          return Icon(Icons.star_border, color: Colors.amber, size: starSize);
        }
      })
        ..add(
          // Add review count text
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: ModifiedText(
              text: '($reviewCount Reviews)',
              size: starSize * 0.9,
              color: textMedium,
            ),
          ),
        ),
    );
  }
}
