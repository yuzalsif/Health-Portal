import 'package:flutter/material.dart';
import 'package:health_potal/components/all_screens_layout/screens_body.dart';
import 'package:health_potal/components/home_screen_components/drawer_screen.dart';
import 'package:health_potal/screens/news_sreens.dart';
import './components/components.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        elevation: 0.0,
        title: const HomeAppBar(),
        backgroundColor: const Color(0xff2a8ed1),
      ),
      body: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            // HomeAppBar(),
            Expanded(
              child: SingleChildScrollView(
                child: ScreenBody(
                  child: HomeSreenBodyContent(),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: buildNavigationButton(context),
    );
  }

  Widget buildNavigationButton(BuildContext context) => FloatingActionButton(
      child:
          const Center(child: Text("News Feed", textAlign: TextAlign.center)),
      backgroundColor: Colors.red,
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const NewsScreen()));
      });
}
