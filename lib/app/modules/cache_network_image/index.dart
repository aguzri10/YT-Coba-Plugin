import 'package:flutter/material.dart';
import 'package:yt_coba_plugin/app/widgets/image_network.dart';

class CacheImagePage extends StatelessWidget {
  const CacheImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cache Network Image')),
      body: GridView(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
        ),
        children: [
          ImageNetworkWidget(
            imageUrl:
                'https://img.freepik.com/free-vector/world-economic-newspaper-composition_1284-19685dashjdashakds.jpg',
          ),
          ImageNetworkWidget(
            imageUrl:
                'https://img.freepik.com/premium-vector/realistic-newspaper-front-page-template_97886-2000.jpg',
          ),
        ],
      ),
    );
  }
}
