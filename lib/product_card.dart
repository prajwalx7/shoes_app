import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  final Color backgroundColor;
  const ProductCard(
      {super.key,
      required this.title,
      required this.price,
      required this.image,
      required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/productdetailpage');
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 5),
            Text(
              '\$$price',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 5),
            Center(
              child: Image.asset(
                image,
                height: 150,
              ),
            )
          ],
        ),
      ),
    );
  }
}
