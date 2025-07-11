import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:glass_container/glass_container.dart';
import 'package:quick_comm/utils/custom_theme.dart';
import 'package:quick_comm/utils/modified_text.dart';
import 'package:quick_comm/widgtes/add_subtract_widget.dart';
import 'package:quick_comm/widgtes/reviews_star_widget.dart'; // Corrected import for ReviewStars
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductScreen extends StatefulWidget {
  final String productName;
  const ProductScreen({super.key, required this.productName});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  late PageController _pageController;

  final List<String> imageList = [
    'assets/Veg & Fruits/Frozen/okra.jpg',
    'assets/Veg & Fruits/Frozen/french_fries.jpg',
    'assets/Veg & Fruits/Frozen/frozen_corn.webp',
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, viewportFraction: 0.85);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // Removed 'spacing: 10' as it's not a standard property of Column.
          // Use SizedBox for spacing between children.
          children: [
            GlassContainer(
              contHeight: 350,
              contWidth: w,
              sigmaY: 50,
              sigmaX: 0,
              contColor: primaryGreenLight,
              radius: BorderRadius.circular(10),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  PageView.builder(
                    controller: _pageController,
                    itemCount: imageList.length,
                    itemBuilder: (context, index) {
                      final imagePath = imageList[index];
                      return Container(
                        margin: const EdgeInsets.symmetric(vertical: 40),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: AssetImage(imagePath),
                              fit: BoxFit.contain),
                        ),
                      );
                    },
                  ),
                  Positioned(
                    bottom: 10,
                    child: SmoothPageIndicator(
                      controller: _pageController,
                      count: imageList.length,
                      effect: const ExpandingDotsEffect(
                        dotHeight: 8,
                        dotWidth: 15,
                        activeDotColor: Colors.white,
                        dotColor: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Spacing after the GlassContainer
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 60,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ModifiedText(
                        text: 'Natural Red Apple',
                        size: 18,
                        color: textDark,
                        fontWeight: FontWeight.bold,
                      ),
                      ModifiedText(
                          text: '1Kg, price', size: 14, color: textLight),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border),
                  ),
                ],
              ),
            ),
            // Spacing after the blue Container
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 60,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AddSubtractWidget(productCount: 1),
                  ModifiedText(text: '\$4.69', size: 18, color: textDark),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 30,
              thickness: 0.5,
              indent: 10,
              endIndent: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ModifiedText(
                      text: 'Product Details', size: 18, color: textDark),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_down_sharp),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              color: Colors.white,
              child: ModifiedText(
                  text: lorem(paragraphs: 1, words: 25),
                  size: 14,
                  color: textMedium),
            ),
            Divider(
              color: Colors.grey,
              height: 30,
              thickness: 0.5,
              indent: 10,
              endIndent: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ModifiedText(text: 'Nutritions', size: 18, color: textDark),
                  ModifiedText(text: '100g', size: 16, color: textMedium)
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 30,
              thickness: 0.5,
              indent: 10,
              endIndent: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ModifiedText(text: 'Reviews', size: 18, color: textDark),
                  ReviewStars(rating: 4.5, reviewCount: 120)
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 30,
              thickness: 0.5,
              indent: 10,
              endIndent: 10,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  ModifiedText(
                    text: 'Similar Products',
                    size: 18,
                    color: textDark,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GridView.builder(
              shrinkWrap:
                  true, // Important for GridView inside SingleChildScrollView
              physics:
                  const NeverScrollableScrollPhysics(), // Disable GridView's own scrolling
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.8),
              itemCount: 10,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemBuilder: (context, index) {
                return Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                    child: Center(
                      child: ModifiedText(
                          text: 'Item $index', color: Colors.white, size: 16),
                    ),
                  ),
                );
              },
            ),
            // Spacing for the Floating Action Button to not overlap content
            const SizedBox(height: 80),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        height: 60,
        width: 300,
        child: FloatingActionButton.extended(
          backgroundColor: primaryGreenDark,
          onPressed: () {
            print('Floating Action Button pressed!');
          },
          label: ModifiedText(
            text: 'Add To Basket',
            size: 18,
            color: Colors.white,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
