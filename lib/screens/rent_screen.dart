import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent/screens/rent_screen_body/app_bar_body.dart';
import 'package:rent/screens/rent_screen_body/rent_body.dart';
import 'package:rent/screens/rent_screen_body/search_body.dart';
import 'package:rent/widgets/image_widget.dart';

class RentScreen extends StatelessWidget {
  const RentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios, ),
        title: Text('Search List'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child:
        CustomScrollView(
          primary: false,
          slivers: <Widget>[
            RentBody(),
            // SliverAppBar(
            //   pinned: true,
            //   flexibleSpace: FlexibleSpaceBar(
            //     background: SearchBody(),
            //   ),
            // ),
            // // SliverToBoxAdapter(child: Container(child: SearchBody())),
            // SliverPadding(
            //   padding: const EdgeInsets.all(20),
            //   sliver: SliverGrid.count(
            //     crossAxisSpacing: 10,
            //     mainAxisSpacing: 10,
            //     crossAxisCount: 2,
            //     children: <Widget>[
            //       // ImageWidget(height: height, images: images, index: index),
            //       Container(
            //         padding: const EdgeInsets.all(8),
            //         color: Colors.green[100],
            //         child: const Text("He'd have you all unravel at the"),
            //       ),
            //       Container(
            //         padding: const EdgeInsets.all(8),
            //         color: Colors.green[200],
            //         child: const Text('Heed not the rabble'),
            //       ),
            //       Container(
            //         padding: const EdgeInsets.all(8),
            //         color: Colors.green[300],
            //         child: const Text('Sound of screams but the'),
            //       ),
            //       Container(
            //         padding: const EdgeInsets.all(8),
            //         color: Colors.green[400],
            //         child: const Text('Who scream'),
            //       ),
            //       Container(
            //         padding: const EdgeInsets.all(8),
            //         color: Colors.green[500],
            //         child: const Text('Revolution is coming...'),
            //       ),
            //       Container(
            //         padding: const EdgeInsets.all(8),
            //         color: Colors.green[600],
            //         child: const Text('Revolution, they...'),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      )
    );
  }
}







// SearchBody(),
// SizedBox(height: 10,),
// RentBody(),