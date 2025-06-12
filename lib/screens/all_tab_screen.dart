import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:quick_comm/data/bannerData.dart';
import 'package:quick_comm/data/categoriesData.dart';
import 'package:quick_comm/data/featuredData.dart';
import 'package:quick_comm/data/products.dart';
import 'package:quick_comm/screens/customsidebar_screen.dart';
import 'package:quick_comm/utils/custom_theme.dart';
import 'package:quick_comm/utils/modified_text.dart';
import 'package:quick_comm/widgtes/card_image.dart';
import 'package:quick_comm/widgtes/category_card.dart';

import '../widgtes/previously_bought_product_card.dart';

class AllTabScreen extends StatefulWidget {
  const AllTabScreen({super.key});

  @override
  State<AllTabScreen> createState() => _AllTabScreenState();
}

class _AllTabScreenState extends State<AllTabScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 5.0, top: 5.0),
        child: Column(
          spacing: 5,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider.builder(
              itemCount: bannerPictures.length,
              itemBuilder: (context, index, realIndex) {
                final bannerImage = bannerPictures[index];
                return InkWell(
                  onTap: () {
                    print('banner tapped');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                        image: DecorationImage(
                            image: AssetImage(bannerImage), fit: BoxFit.cover)),
                  ),
                );
              },
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                enlargeCenterPage: true,
                viewportFraction: 0.95,
              ),
            ),
            ModifiedText(
              text: 'Featured This Week',
              size: 18,
              color: textDark,
              fontWeight: FontWeight.bold,
            ),
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
              fontWeight: FontWeight.bold,
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
                    child: PreviouslyBoughtProductCard(
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
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ModifiedText(
                text: 'Groceries & Kitchen',
                size: 18,
                color: textDark,
                fontWeight: FontWeight.bold,
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisExtent: 160,
                mainAxisSpacing: 1.0, // Vertical spacing between items
              ),
              itemBuilder: (context, index) {
                final category = categoriesGroceriesData[index];
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => CustomSideBarScreen()),
                    );
                  },
                  child: CategoryCard(
                    text: category['category'],
                    imagePath: category['imagePath'],
                  ),
                );
              },
              itemCount: categoriesGroceriesData.length,
              padding: const EdgeInsets.all(8.0), // Padding around the grid
            ),
          ],
        ),
      ),
    );
  }
}
