import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final double height;
  final List<String> images;
  final int index;
  const ImageWidget({super.key, required this.height, required this.images, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.only(bottom: 15),
      height: height,
      width:  double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(images[index]),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(24),
      ),

    );
  }
}
