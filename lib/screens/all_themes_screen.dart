import 'package:flutter/material.dart';
import 'package:health_potal/components/all_screens_layout/screens_body.dart';
import 'package:health_potal/components/all_screens_layout/screens_header.dart';
import 'package:health_potal/components/components.dart';
import 'package:health_potal/models/theme_cards_list.dart';

class AllThemesScreen extends StatefulWidget {
  const AllThemesScreen({Key? key}) : super(key: key);

  @override
  State<AllThemesScreen> createState() => _AllThemesScreenState();
}

class _AllThemesScreenState extends State<AllThemesScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xff2a8ed1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ScreenHeader(
              title: 'All Themes',
              // subTitle: 'RCH-Antenatal care',
            ),
            Expanded(
              child: ScreenBody(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                  ),
                  primary: false,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: ThemeCards.allCards.length,
                  padding: const EdgeInsets.only(bottom: 10),
                  itemBuilder: (context, index) {
                    final item = ThemeCards.allCards[index];
                    return AppCards(
                      cardTitle: item.cardTitle,
                      height: item.height,
                      width: item.width,
                      cardelevation: item.cardelevation,
                      cardColor: item.cardColor,
                      imageUrl: item.imageUrl ?? '',
                    );
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
