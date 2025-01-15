import 'package:flutter/material.dart';

class CategoryBody extends StatelessWidget {
  final Function() onPressed;
  final bool isSelected;
  const CategoryBody({super.key, required this.onPressed, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
          itemCount: categories.length,
          itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(right: 20),
          child: GestureDetector(
            onTap: onPressed,
            child: Text(categories[index]),
          ),
        );
      }),
    );
  }
}


List<String> categories = [
  'Купить',
  'Арендовать',
  'Новостройки',
];