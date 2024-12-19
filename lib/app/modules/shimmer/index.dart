import 'package:flutter/material.dart';
import 'package:yt_coba_plugin/app/data/local.dart';
import 'package:yt_coba_plugin/app/models/news.dart';
import 'package:yt_coba_plugin/app/widgets/news.dart';
import 'package:yt_coba_plugin/app/widgets/shimmers/news.dart';

class ShimmerPage extends StatefulWidget {
  const ShimmerPage({super.key});

  @override
  State<ShimmerPage> createState() => _ShimmerPageState();
}

class _ShimmerPageState extends State<ShimmerPage> {
  bool _loading = false;
  List<NewsModel> _news = [];

  set loading(bool value) {
    setState(() => _loading = value);
  }

  set news(List<NewsModel> values) {
    setState(() => _news = values);
  }

  @override
  void initState() {
    get();
    super.initState();
  }

  void get() async {
    loading = true;
    await Future.delayed(const Duration(seconds: 3));
    news = LocalData.news();
    loading = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Shimmer')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Visibility(
          visible: _loading,
          replacement: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final data = _news[index];
              return NewsWidget(news: data);
            },
            separatorBuilder: (_, __) => const SizedBox(height: 16),
            itemCount: _news.length,
          ),
          child: const NewsLoad(),
        ),
      ),
    );
  }
}
