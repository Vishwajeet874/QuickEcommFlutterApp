import 'package:flutter/material.dart';
import 'package:quick_comm/data/featuredData.dart';
import 'package:quick_comm/data/products.dart';
import 'package:quick_comm/utils/custom_theme.dart';
import 'package:quick_comm/utils/modified_text.dart';
import 'package:quick_comm/widgtes/card_image.dart';

import '../widgtes/product_card.dart';

class AllTabScreen extends StatefulWidget {
  const AllTabScreen({super.key});

  @override
  State<AllTabScreen> createState() => _AllTabScreenState();
}

class _AllTabScreenState extends State<AllTabScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ModifiedText(text: 'Featured This Week', size: 18, color: textDark),
          SizedBox(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: featuredData.length,
              itemBuilder: (context, index) {
                final featuredCategory = featuredData[index];
                return SizedBox(
                  width: 150,
                  child: CardImage(
                    imagePath: featuredCategory['image_path'],
                    featuredText: featuredCategory['featuredText'],
                  ),
                );
              },
            ),
          ),
          ModifiedText(
            text: 'Previously Bought',
            size: 18,
            color: textDark,
          ),
          SizedBox(
            height: 320,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: productData.length,
              itemBuilder: (context, index) {
                final product = productData[index];
                return SizedBox(
                  width: 170,
                  child: ProductCard(
                    imagePath: product['imagePath'],
                    productName: product['productName'],
                    quantity: product['quantity'],
                    deliveryTime: product['deliveryTime'],
                    currentPrice: product['currentPrice'],
                    originalPrice: product['originalPrice'],
                    showOffer: product['showOffer'],
                    offerPercentage: product['offerPercentage'],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 320,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: productData.length,
              itemBuilder: (context, index) {
                final product = productData[index];
                return SizedBox(
                  width: 150,
                  child: ProductCard(
                    imagePath: product['imagePath'],
                    productName: product['productName'],
                    quantity: product['quantity'],
                    deliveryTime: product['deliveryTime'],
                    currentPrice: product['currentPrice'],
                    originalPrice: product['originalPrice'],
                    showOffer: product['showOffer'],
                    offerPercentage: product['offerPercentage'],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
