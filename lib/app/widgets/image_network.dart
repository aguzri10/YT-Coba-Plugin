import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageNetworkWidget extends StatelessWidget {
  final String imageUrl;
  final double? height, width;
  final double radius;
  const ImageNetworkWidget({
    super.key,
    required this.imageUrl,
    this.height,
    this.width,
    this.radius = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.cover,
        height: height,
        width: width,
        placeholder: (context, url) {
          return Padding(
            padding: EdgeInsets.all(62),
            child: CircularProgressIndicator(),
          );
        },
        errorWidget: (context, url, error) {
          return Icon(
            Icons.broken_image_rounded,
            color: Colors.redAccent,
            size: 42,
          );
        },
      ),
    );
  }
}
