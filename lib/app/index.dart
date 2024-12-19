// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:yt_coba_plugin/routes/paths.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  void initState() {
    redirect();
    super.initState();
  }

  void redirect() async {
    await Future.delayed(Durations.extralong4);
    Navigator.pushNamedAndRemoveUntil(context, Paths.home, (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
