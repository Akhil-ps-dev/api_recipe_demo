import 'package:flutter/material.dart';
import 'package:list_dummy_text/pages/SettingsScreen/screen_settings.dart';

import '../bottomNavigation/bottomnavi.dart';
import '../screens/screen_main.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({Key? key}) : super(key: key);

  static ValueNotifier<int> sletedIndexNotifier = ValueNotifier(0);

  final _pages = [HomePage(), SettingScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: sletedIndexNotifier,
          builder: (BuildContext context, int updatedIndex, _) {
            return _pages[updatedIndex];
          },
        ),
      ),
    );
  }
}
