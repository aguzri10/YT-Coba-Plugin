import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:yt_coba_plugin/app/data/local.dart';

class GapPage extends StatelessWidget {
  const GapPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: Text('Gap')),
      body: CustomScrollView(
        slivers: [
          // SliverPadding(padding: EdgeInsets.all(8.0)),
          SliverGap(16),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 0,
              ),
              child: Flexible(
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(26),
                      child: Image.network(
                        LocalData.flutterImage,
                        width: 52,
                        height: 52,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // SizedBox(width: 12),
                    Gap(12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('iamagusriy', style: textTheme.bodyLarge),
                        // SizedBox(height: 4),
                        Gap(4),
                        Text(
                          'iamagusriy@gmail.com',
                          style: textTheme.bodySmall?.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                        // SizedBox(height: 2),
                        Gap(2),
                        Text(
                          'https://iamagusriy.id/',
                          style: textTheme.bodySmall?.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          // SliverPadding(padding: EdgeInsets.all(8.0)),
          SliverGap(16),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 0,
              ),
              child: Flexible(
                child: Row(
                  spacing: 12,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(26),
                      child: Image.network(
                        LocalData.flutterImage,
                        width: 52,
                        height: 52,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // SizedBox(width: 12),
                    // Gap(12),
                    Column(
                      spacing: 4,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('iamagusriy', style: textTheme.bodyLarge),
                        // SizedBox(height: 4),
                        // Gap(4),
                        Text(
                          'iamagusriy@gmail.com',
                          style: textTheme.bodySmall?.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                        // SizedBox(height: 2),
                        // Gap(2),
                        Text(
                          'https://iamagusriy.id/',
                          style: textTheme.bodySmall?.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
