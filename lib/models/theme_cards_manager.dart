import 'package:flutter/widgets.dart';

class ThemeCardsManager extends ChangeNotifier {
  //this variable checks if user ha clicked the 'See All' button
  bool _isSeeAllChecked = false;

  bool get isSeeAllChecked => _isSeeAllChecked;

  void seeAllToggler() {
    _isSeeAllChecked = !_isSeeAllChecked;
    notifyListeners();
  }
}
