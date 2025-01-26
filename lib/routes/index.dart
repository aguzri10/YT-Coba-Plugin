import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:yt_coba_plugin/app/index.dart';
import 'package:yt_coba_plugin/app/modules/cache_network_image/index.dart';
import 'package:yt_coba_plugin/app/modules/gap/index.dart';
import 'package:yt_coba_plugin/app/modules/get_storage/index.dart';
import 'package:yt_coba_plugin/app/modules/home/index.dart';
import 'package:yt_coba_plugin/app/modules/shimmer/index.dart';
import 'package:yt_coba_plugin/routes/paths.dart';

class Routes {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    final name = settings.name;
    log('Navigate to: $name');
    switch (name) {
      case Paths.initial:
        return MaterialPageRoute(
          builder: (context) => const InitialPage(),
        );
      case Paths.home:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
      case Paths.getStorage:
        return MaterialPageRoute(
          builder: (context) => const GetStoragePage(),
        );
      case Paths.shimmer:
        return MaterialPageRoute(
          builder: (context) => const ShimmerPage(),
        );
      case Paths.gap:
        return MaterialPageRoute(
          builder: (context) => const GapPage(),
        );
      case Paths.cacheNetworkImage:
        return MaterialPageRoute(
          builder: (context) => const CacheImagePage(),
        );
      default:
        return null;
    }
  }
}
