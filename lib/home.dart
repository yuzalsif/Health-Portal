import 'package:flutter/material.dart';
import 'package:health_potal/screens/news_sreens.dart';
import './components/components.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xff2a8ed1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            HomeAppBar(),
            Expanded(
              child: HomeSreenBody(),
            ),
          ],
        ),
      ),
      floatingActionButton: buildNavigationButton(context),
    );
  }

  Widget buildNavigationButton(BuildContext context) => FloatingActionButton(
        child: const Center(
            child: Text(
          'News Feed',
          textAlign: TextAlign.center,
        )),
        backgroundColor: Colors.red,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: ((context) => const NewsScreen())));
        },
      );
}
