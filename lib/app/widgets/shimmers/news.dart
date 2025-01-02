import 'package:flutter/material.dart';
import 'package:yt_coba_plugin/app/widgets/box.dart';
import 'package:yt_coba_plugin/app/widgets/shimmers/index.dart';

class NewsLoad extends StatelessWidget {
  const NewsLoad({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmers.loading(
      loading: true,
      onLoading: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BoxWidget(
                  height: 100,
                  width: 100,
                  color: Colors.blue.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(12),
                ),
                const SizedBox(width: 12),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BoxWidget(
                        height: 16,
                        width: double.infinity,
                        color: Colors.blue.withValues(alpha: 0.3),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      const SizedBox(height: 4),
                      BoxWidget(
                        height: 56,
                        width: double.infinity,
                        color: Colors.blue.withValues(alpha: 0.3),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          BoxWidget(
                            height: 14,
                            width: 120,
                            color: Colors.blue.withValues(alpha: 0.3),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
