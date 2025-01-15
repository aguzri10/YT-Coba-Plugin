import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yt_coba_plugin/app/data/local.dart';
import 'package:yt_coba_plugin/app/models/plugin.dart';
import 'package:yt_coba_plugin/core/constants/icons.dart';
import 'package:yt_coba_plugin/core/constants/images.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void onTap(PluginModel data) {
    final path = data.path ?? '/';
    Navigator.pushNamed(context, path);
  }

  @override
  Widget build(BuildContext context) {
    final plugins = LocalData.plugins();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coba Plugin'),
        // leading: Padding(
        //   padding: EdgeInsets.all(8.0),
        //   child: Image.asset(MyImages.logo),
        // ),
        leading: Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(MyImages.logo),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(MyIcons.fingerprintLine),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: plugins.length,
          itemBuilder: (context, index) {
            final plugin = plugins[index];
            return ListTile(
              onTap: () => onTap(plugin),
              title: Text(plugin.name ?? '-'),
              subtitle: Text(plugin.desc ?? '-'),
            );
          },
        ),
      ),
    );
  }
}
