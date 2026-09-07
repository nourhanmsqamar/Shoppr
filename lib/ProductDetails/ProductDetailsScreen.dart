import 'package:flutter/material.dart';
import 'package:shoppr/ProductDetails/widgets/SizeBoxItem.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ///================image=========
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                  child: Image.asset(
                    "assets/images/details_shose.png",
                    height: 350,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                ///======================arrow back======================
                Positioned(
                  top: 50,
                  left: 20,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon:  Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ),
                ///=========================favorite=======================
                Positioned(
                  top: 50,
                  right: 20,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.favorite_border, color: Colors.black),
                  ),
                ),
              ],
            ),
            ///=====================================================
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text(
                        "Nike Shoes",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                       Text(
                        r"$430",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff5E5CE6),
                        ),
                      ),
                    ],
                  ),
                   SizedBox(height: 8),

                  ///==================reviwe=======================
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 20),
                      SizedBox(width: 4),
                      Text(
                        "4.5",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 6),
                      Text(
                        "(20 Review)",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  ///======================================================
                   SizedBox(height: 20),

                  ///===================Description===============================
                   Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                   SizedBox(height: 8),
                   Text(
                    "Culpa aliquam consequuntur veritatis at consequuntur praesentium beatae temporibus nobis. Velit dolorem facilis neque autem.",
                    style: TextStyle(
                      color: Colors.grey,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 20),

                  ///=================size part=================
                   Text(
                    "Size",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    children:  [
                      SizeBoxItem(size: "8"),
                      SizedBox(width: 12),
                      SizeBoxItem(size: "10"),
                      SizedBox(width: 12),
                      SizeBoxItem(size: "12"),
                      SizedBox(width: 12),
                      SizeBoxItem(size: "14"),
                    ],
                  ),
                   SizedBox(height: 40),

                  ///==================button===========
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff5E5CE6),
                            fixedSize: Size.fromHeight(50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          child: Text(
                            "Buy Now",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                       ///==============================
                       SizedBox(width: 16),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color:  Color(0xffF3F3F3),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Icon(Icons.shopping_bag_outlined, color: Colors.black54),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

