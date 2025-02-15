import 'package:flutter/material.dart';
import 'package:yt_coba_plugin/core/services/get_storage.dart';
import 'package:yt_coba_plugin/core/themes/index.dart';
import 'package:yt_coba_plugin/routes/index.dart';

void main() async {
  await GSServices.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coba Plugin',
      theme: MyThemes.data(context),
      initialRoute: '/',
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
