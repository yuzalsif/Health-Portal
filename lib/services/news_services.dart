import 'dart:convert';
import 'package:health_potal/models/news_feed_model.dart';
import 'package:http/http.dart'; 

const String baseUrl = 'https://newsapi.org/v2/everything';
const String query = 'health';
const String from = '2022-07-19';
const String to = '2022-07-19';
const String apiKey = '6aa0eaebc1c543eea5d8635bf929208c';


class NewsServices{
   static Future getData() async {
    final response = await get(Uri.parse('$baseUrl?q=$query&from=$from&to=$to&sortBy=popularity&apiKey=$apiKey'));

   if (response.statusCode == 200){
    return response.body;
   } else{
    throw 'Failed to connect';
   }
   }

   static Future<NewsFeed> getNews() async {
      final jsonString = await getData();

      final news = jsonDecode(jsonString);

      final newsFields = NewsFeed.fromJson(news);

      return newsFields;
   }
}