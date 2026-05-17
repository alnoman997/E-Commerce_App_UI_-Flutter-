import 'package:flutter/material.dart';

class ItemProduct extends StatelessWidget {
  final  String title, image, price;
  const ItemProduct({super.key, required this.title, required this.image, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Flexible(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/images/$image', width: double.infinity, fit: BoxFit.cover)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              spacing: 5,
              children: [
                Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Text('BDT. $price', style: TextStyle(fontWeight: FontWeight.w300)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
