import 'package:flutter/material.dart';
import 'package:yt_coba_plugin/main.dart';

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
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (builder) => const MyHomePage(title: 'YT Coba Plugin EP1'),
      ),
      (route) => false,
    );
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
