import 'package:flutter/material.dart';
import 'package:health_potal/components/all_screens_layout/screens_body.dart';
import 'package:health_potal/components/all_screens_layout/screens_header.dart';
import 'package:health_potal/components/news_screen_components/news_screen_row.dart';
import 'package:health_potal/models/news_feed_model.dart';
import 'package:health_potal/services/news_services.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  // late Future<NewsFeed> newsFeeds;
  // @override
  // void initState() {
  //   super.initState();
  //   newsFeeds = NewsServices.getNews();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xff2a8ed1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ScreenHeader(
              title: 'News&Updates',
              subTitle: 'Get to be updated',
            ),
            Expanded(
              child: ScreenBody(
                child: FutureBuilder<NewsFeed>(
                  future: NewsServices.getNews(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      if (snapshot.hasData) {
                        final newsFeeds = snapshot.data;
                        return ListView.separated(
                            itemBuilder: (context, index) {
                              return NewsScreenRow(news: newsFeeds!.articles![index]);
                            },
                            separatorBuilder: (context, index) {
                              return const SizedBox(
                                height: 16,
                              );
                            },
                            itemCount: newsFeeds!.articles!.length);
                      } else {
                        Text('$snapshot.error');
                      }
                    }
                    return const Center(child: CircularProgressIndicator());
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
