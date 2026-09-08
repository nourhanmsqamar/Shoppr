import 'package:flutter/material.dart';

import '../Core/widgets/ProductItem.dart';


class ExploreScreen extends StatelessWidget {
   ExploreScreen({super.key});
  final List<String> titles = [
    "Shoes",
    "Nike Shoes",
    "Shoes",
    "Shoes",
    "Shoes",
    "Shoes",
    "Shoes",
    "Shoes"

  ];
  final List<String> prices = [r"$40", r"$430", r"$330", r"$333", r"$50", r"$400",r"$50", r"$400"];
  final List<String> images = [
    "assets/images/shoes1.png",
    "assets/images/nike_shoes.png",
    "assets/images/shoes2.png",
    "assets/images/shoes3.png",
    "assets/images/shoes4.png",
    "assets/images/shoes5.png",
    "assets/images/shoes1.png",
    "assets/images/shoes2.png",
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            children: [
              ///==================== Search Bar ======================
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.arrow_back, color: Colors.black),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Shoes",
                        hintStyle: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        prefixIcon: const Icon(Icons.search, color: Colors.black, size: 26),
                        suffixIcon: const Icon(Icons.cancel, color: Colors.black, size: 20),
                        filled: true,
                        fillColor: const Color(0xffF3F3F3),
                        contentPadding: const EdgeInsets.symmetric(vertical: 0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ///=======================================================

              const SizedBox(height: 24),

              ///==================== Results Info ======================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text.rich(
                    TextSpan(
                      text: "Results for ",
                      style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w500),
                      children: [
                        TextSpan(
                          text: '"Shoes"',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "${titles.length} Results Found",
                    style: const TextStyle(
                      color: Color(0xff5E5CE6),
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              ///=======================================================

              const SizedBox(height: 24),

              ///==================== Grid View ======================
              Expanded(
                child: GridView.builder(
                  itemCount: titles.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (context, index) {

                    return ProductItem(
                      title: titles[index],
                      price: prices[index],
                      image: images[index],
                    );
                  },
                ),
              ),
              ///=======================================================
            ],
          ),
        ),
      ),
    );
  }
}