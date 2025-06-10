import 'package:flutter/material.dart';

final List<Map<String, dynamic>> productData = const [
  {
    'imagePath':
        'assets/product_images/poha.webp', // Replace with your actual image path
    'productName': 'Smart Choice Poha Super Fine',
    'quantity': '500 g',
    'deliveryTime': '7:00 am',
    'currentPrice': '₹40',
    'originalPrice': '₹50',
    'showOffer': true,
    'offerPercentage': '20% OFF',
  },
  {
    'imagePath':
        'assets/product_images/milk500ml.webp', // Replace with your actual image path
    'productName': 'Amul Slim N Trim Fresh Milk Pouch',
    'quantity': '500 ml',
    'deliveryTime': '7:00 am',
    'currentPrice': '₹26',
    'originalPrice': null,
    'showOffer': false,
    'offerPercentage': null,
  },
  {
    'imagePath':
        'assets/product_images/cauliflower.jpg', // Replace with your actual image path
    'productName': 'Everest Tikhalal Red Chilli Powder',
    'quantity': '100 g',
    'deliveryTime': '7:00 am',
    'currentPrice': '₹54',
    'originalPrice': null,
    'showOffer': false,
    'offerPercentage': null,
  },
  {
    'imagePath':
        'assets/product_images/bread.jpg', // Example of another product
    'productName': 'Tata Sampann Sugar',
    'quantity': '1 Kg',
    'deliveryTime': '7:00 am',
    'currentPrice': '₹55',
    'originalPrice': '₹60',
    'showOffer': true,
    'offerPercentage': '10% OFF',
  },
];
