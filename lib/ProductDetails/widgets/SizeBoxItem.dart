import 'package:flutter/material.dart';
class SizeBoxItem extends StatelessWidget {
  final String size;
  const SizeBoxItem({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        size,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}