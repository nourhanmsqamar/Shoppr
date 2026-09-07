import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String image;
  final String title;
  final String price;

  const ProductItem({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       ///==================image+favorite======
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                image,
                height: 130,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const Positioned(
              top: 8,
              right: 8,
              child: Icon(Icons.favorite_border, color: Colors.white),
            ),
          ],
        ),
        ///===============================================

        const SizedBox(height: 8),

       ///========================data(name/price)=================
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Text(
                  price,
                  style: TextStyle(
                    color: Color(0xff5E5CE6),
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ),
              ],
            ),

            ///==================+icone========================
            CircleAvatar(
              radius: 12,
              backgroundColor: Color(0xff5E5CE6),
              child: Icon(Icons.add, size: 16, color: Colors.white),
            ),

          ],
        ),
      ],
    );
  }
}