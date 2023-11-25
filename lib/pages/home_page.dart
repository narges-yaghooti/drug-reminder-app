

import 'package:flutter/material.dart';

class HomePaage extends StatefulWidget {
  const HomePaage({super.key});

  @override
  State<HomePaage> createState() => _HomePaageState();
}

class _HomePaageState extends State<HomePaage> {
  int selectedIndex = 3;
  bool onTap = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              
              icon: Icon(
                Icons.add,
              
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.timer,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.medical_services,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index, bool onTap) {
    setState(() {
      selectedIndex = index;
      !onTap;
    });
    print('TAP');
  }
}
