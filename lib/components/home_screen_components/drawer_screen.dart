import 'package:flutter/material.dart';
import 'package:health_potal/home.dart';
import 'package:health_potal/screens/screens.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  double get width => MediaQuery.of(context).size.width;

  final EdgeInsets padding = const EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: width / 1.6,
      child: Material(
        color: const Color(0xff2a8ed1),
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 10,
            ),
            buildMenuItem(
                text: 'Home',
                icon: (Icons.home),
                context: context,
                screen: const Home()),
            const SizedBox(
              height: 15,
            ),
            buildMenuItem(
              text: 'Routine Data Statistics',
              icon: (Icons.bar_chart),
              context: context,
              screen: const RoutineScreen(),
            ),
            const SizedBox(
              height: 15,
            ),
            buildMenuItem(
              text: 'Survey Data Statistics',
              icon: (Icons.bar_chart),
              context: context,
              screen: const SurveyScreen(),
            ),
            const SizedBox(
              height: 15,
            ),
            buildMenuItem(
              text: 'HMIS Library',
              icon: (Icons.file_download),
              context: context,
              screen: const RoutineScreen(),
            ),
            const SizedBox(
              height: 15,
            ),
            buildMenuItem(
              text: 'News&Update',
              icon: (Icons.sync),
              context: context,
              screen: const NewsScreen(),
            ),
            buildMenuItem(
              text: 'Help/Feedback',
              icon: (Icons.help_outline),
              context: context,
              screen: const RoutineScreen(),
            )
          ],
        ),
      ),
    );
  }

  buildMenuItem(
      {required String text,
      required IconData icon,
      required Widget screen,
      required BuildContext context}) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(text, style: const TextStyle(color: Colors.white)),
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => screen)));
      },
    );
  }
}
