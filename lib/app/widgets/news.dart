import 'package:flutter/material.dart';
import 'package:yt_coba_plugin/app/models/news.dart';

class NewsWidget extends StatelessWidget {
  final NewsModel news;
  const NewsWidget({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.01),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              news.cover ?? '',
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  news.title ?? '-',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  // style: const TextStyle(
                  //   fontSize: 16,
                  //   fontWeight: FontWeight.w700,
                  // ),
                  style: textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  news.desc ?? '-',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  // style: const TextStyle(
                  //   fontSize: 12,
                  //   fontWeight: FontWeight.w400,
                  // ),
                  style: textTheme.bodySmall,
                ),
                const SizedBox(height: 8),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Read More',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      // style: TextStyle(
                      //   fontSize: 12,
                      //   fontWeight: FontWeight.w400,
                      //   color: Colors.blue,
                      // ),
                      style: textTheme.bodySmall?.copyWith(
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(width: 4),
                    Icon(
                      Icons.arrow_forward,
                      size: 18,
                      color: Colors.blue,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
