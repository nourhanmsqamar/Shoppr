import 'package:flutter/material.dart';
import '../Core/widgets/ProductItem.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  ///====================product data========================
  final List<String> titles = const [
    "Watch",
    "Nike Shoes",
    "LG TV",
    "Airpods",
    "Jacket",
    "Hoodie",
  ];

  final List<String> prices = const [
    "40",
    "430",
    "330",
    "333",
    "50",
    "400",
  ];

  final List<String> images = const [
    "assets/images/watch.png",
    "assets/images/nike_shoes.png",
    "assets/images/lg_tv.png",
    "assets/images/airpods.png",
    "assets/images/jacket.png",
    "assets/images/hoodie.png",
  ];
  ///========================================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///====================user data==================
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundColor: Color(0xffE0E0E0),
                      backgroundImage: AssetImage("assets/images/profile.png"),
                    ),
                    const SizedBox(width: 10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello!",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "User",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                      SizedBox(width: 180,),
                     CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xffF7F7F7),
                      child: Icon(
                        Icons.notifications_none,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                ///================================================

                const SizedBox(height: 20),

                ///====================search=====================
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: const Color(0xffF7F7F7),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      hintText: "Search here",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 12),
                    ),
                  ),
                ),
                ///================================================

                 SizedBox(height: 20),

                ///====================banner======================
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/Signup.png",
                    height: 140,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                ///================================================

                 SizedBox(height: 12),

                ///====================dots========================
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 7,
                      height: 7,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      width: 7,
                      height: 7,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff5E5CE6),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      width: 7,
                      height: 7,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      width: 7,
                      height: 7,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                ///================================================

                 SizedBox(height: 15),

                ///====================featured title=============
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Text(
                      "Featured",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff5E5CE6),
                      ),
                    ),
                  ],
                ),
                ///================================================

                 SizedBox(height: 12),

                ///====================featured products==========
                SizedBox(
                  height: 220,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: titles.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: ProductItem(
                            image: images[index],
                            title: titles[index],
                            price: prices[index],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                ///================================================

                const SizedBox(height: 15),

                ///====================popular title==============
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Most Popular",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff5E5CE6),
                      ),
                    ),
                  ],
                ),
                ///================================================

                const SizedBox(height: 12),

                ///====================popular products============
                SizedBox(
                  height: 220,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: ProductItem(
                            image: images[index],
                            title: titles[index],
                            price: prices[index],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                ///================================================
              ],
            ),
          ),
        ),
      ),
    );
  }
}