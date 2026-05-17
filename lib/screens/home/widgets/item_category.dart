import 'package:flutter/material.dart';

class ItemCategory extends StatelessWidget {
  final String title, image;
  final  Color color;
  const ItemCategory({super.key, required this.title, required this.image, required this.color});

  @override
  Widget build(BuildContext context) {
    return
      Column(
        spacing:  5,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ) ,
            child: Image.asset('assets/icons/$image',  height : 40),
          ),
          Text(title, style: TextStyle(fontWeight: FontWeight.w300))
        ],
      );

  }
}
