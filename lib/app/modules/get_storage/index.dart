import 'package:flutter/material.dart';
import 'package:yt_coba_plugin/core/constants/keys.dart';
import 'package:yt_coba_plugin/core/services/get_storage.dart';

class GetStoragePage extends StatefulWidget {
  const GetStoragePage({super.key});

  @override
  State<GetStoragePage> createState() => _GetStoragePageState();
}

class _GetStoragePageState extends State<GetStoragePage> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Get Storage')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'After use Get Storage with Basic Implementation',
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
