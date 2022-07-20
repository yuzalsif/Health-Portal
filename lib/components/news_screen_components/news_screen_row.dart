import 'package:flutter/material.dart';
import 'package:health_potal/models/news_feed_model.dart';


class NewsScreenRow extends StatelessWidget {
  final News news;

  const NewsScreenRow({
    Key? key,
    required this.news,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
            image: DecorationImage(
              image:
                  NetworkImage(news.urlToImage ?? ''),
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: SizedBox(
            height: 200,
            child: Column(
              children: [
                Text(
                  news.title ?? '',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  news.description ?? '',
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  news.publishedAt ?? '',
                  style: const TextStyle(fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
