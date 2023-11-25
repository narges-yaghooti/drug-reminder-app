import 'package:flutter/material.dart';
import 'package:medikamente/pages/home_page.dart';
import 'package:medikamente/widgets/home_bottom_navigation.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: HomeBottomNavigation(
          onItemTapped: _onItemTapped,
          selectedIndex: selectedIndex,
        ),
        body: _getSelectedTab(),
      ),
    );
  }

  Widget _getSelectedTab() {
    if (selectedIndex == 0) {
      return HomePaage();
    } else if (selectedIndex == 1) {
      return Text("reminders Tab");
    } else if (selectedIndex == 2) {
      return Text("new plan form");
    } else if (selectedIndex == 3) {
      return Text("drug list");
    } else {
      return Text("setting");
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
