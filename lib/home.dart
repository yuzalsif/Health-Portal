import 'package:flutter/material.dart';
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
      floatingActionButton: buildNavigationButton(),
    );
  }

  Widget buildNavigationButton() => FloatingActionButton(
        child: const Text("NewsFeed"),
        backgroundColor: Colors.blue,
        onPressed: () {},
      );
}
