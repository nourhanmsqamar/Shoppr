import 'package:flutter/material.dart';
import '../Core/widgets/ProductItem.dart';

class ProductListScreen extends StatelessWidget {
  ProductListScreen({super.key});

  final List<String> titles = [
    "Watch",
    "Nike Shoes",
    "LG TV",
    "Airpods",
    "Jacket",
    "Hoodie",
    "T-Shirt",
    "Long Shirt"

  ];
  final List<String> prices = [r"$40", r"$430", r"$330", r"$333", r"$50", r"$400",r"$50", r"$400"];
  final List<String> images = [
    "assets/images/watch.png",
    "assets/images/nike_shoes.png",
    "assets/images/lg_tv.png",
    "assets/images/airpods.png",
    "assets/images/jacket.png",
    "assets/images/hoodie.png",
    "assets/images/black_tshirt.png",
    "assets/images/pink_tshirt.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Products",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: GridView.builder(
          itemCount: images.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16, ///vertical
            mainAxisSpacing: 16, ///horizontal
            childAspectRatio: 0.75,
          ),

          ///===============calling product item===========
          itemBuilder: (context, index) => ProductItem(
            image: images[index],
            title: titles[index],
            price: prices[index],
          ),
        ),
      ),
    );
  }
}
