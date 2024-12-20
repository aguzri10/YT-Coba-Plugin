import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:yt_coba_plugin/app/index.dart';
import 'package:yt_coba_plugin/core/constants/keys.dart';
import 'package:yt_coba_plugin/core/services/get_storage.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const InitialPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  void initState() {
    final current = GSServices.int(Keys.counter);
    setState(() => _counter = current ?? 0);
    super.initState();
  }

  void _incrementCounter() async {
    setState(() {
      _counter++;
    });
    await GSServices.setInt(Keys.counter, _counter);
  }

  void remove() async {
    await GSServices.remove(Keys.counter);
    final current = GSServices.int(Keys.counter);
    setState(() => _counter = current ?? 0);
  }

  void read() {
    final username = GSServices.string(Keys.username);
    final hasLogin = GSServices.boolean(Keys.hasLogin);

    log('$username');
    log('$hasLogin');
  }

  void write() async {
    await GSServices.setString(Keys.username, 'iamagusriy');
    await GSServices.setBool(Keys.hasLogin, true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'After use Get Storage with Effective Implementation',
            ),
            const SizedBox(height: 8),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(onPressed: remove, child: const Text('Remove'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
