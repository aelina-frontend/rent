import 'package:flutter/material.dart';
import 'package:rent/screens/rent_screen_body/search_body.dart';

class AppBarBody extends StatelessWidget {
  const AppBarBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          leading: Icon(Icons.arrow_back_ios, ),
          title: Text('Search List'),
        ),
      ],
    );
  }
}
