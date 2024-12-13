import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:yt_coba_plugin/app/index.dart';
import 'package:yt_coba_plugin/app/modules/get_storage/index.dart';
import 'package:yt_coba_plugin/app/modules/home/index.dart';
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

      default:
        return null;
    }
  }
}
