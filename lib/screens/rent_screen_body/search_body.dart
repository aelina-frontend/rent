import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rent/core/app_colors.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          const Expanded(
            child: SizedBox(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search, color: AppColors.blueColor,),
                  hintText: 'Enter city or region',
                ),
              ),
            ),
          ),
          const SizedBox(width: 7,),
          Container(
            height: 50,
            width: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey, width: 1.0),
            ),
            child: const Icon(Icons.tune, color: AppColors.blueColor,),
          )
        ],
      ),
    );
  }
}
