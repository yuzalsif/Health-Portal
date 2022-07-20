import 'package:flutter/material.dart';
import 'package:health_potal/components/components.dart';

class HomeSreenBodyContent extends StatefulWidget {
  const HomeSreenBodyContent({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeSreenBodyContent> createState() => _HomeSreenBodyContentState();
}

class _HomeSreenBodyContentState extends State<HomeSreenBodyContent> {
  final graphs = const [
    HorizontalGraphs(
      graphName: 'OPD VISIT',
    ),
    HorizontalGraphs(
      graphName: 'OPD VISIT',
    ),
    HorizontalGraphs(
      graphName: 'OPD VISIT',
    ),
  ];
  final PageController pageController = PageController();

  double get size => MediaQuery.of(context).size.width;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const Text(
          'HIGHLIGHTS',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 365,
          child: Stack(
            children: [
              SizedBox(
                height: 350,
                child: PageView(
                  controller: pageController,
                  children: graphs,
                ),
              ),
              Positioned(
                bottom: 0,
                width: size,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...graphs.map((element) {
                        if (pageController.hasClients &&
                            pageController.page != null) {
                          return Container(
                            margin: const EdgeInsets.only(
                              top: 24,
                              left: 6,
                            ),
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                                color: _getColor(element),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                border: Border.all(color: Colors.grey)),
                          );
                        }
                        return Container();
                      })
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const RowBeforeTheme(),
        const SizedBox(
          height: 16,
        ),
        const ThemesTitle(),
        const SizedBox(
          height: 16,
        ),
        const ThemesRow(),
        const SizedBox(
          height: 24,
        ),
      ],
    );
  }

  _getColor(HorizontalGraphs element) {
    return graphs.indexOf(element) == (pageController.page?.toInt() ?? 0)
        ? Colors.grey
        : Colors.white;
  }
}
