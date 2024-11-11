import 'package:flutter/material.dart';

class TabBarViewModel extends ChangeNotifier {
  late TabController tabController;

  void initTabController(TickerProvider vsync, int length) {
    tabController = TabController(length: length, vsync: vsync);
    tabController.addListener(() {
      notifyListeners();
    });
  }

  int get selectedTabIndex => tabController.index;

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}
