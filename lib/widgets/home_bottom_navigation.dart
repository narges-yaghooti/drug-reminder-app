import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medikamente/helpers/colors_helper.dart';

class HomeBottomNavigation extends StatefulWidget {
  int selectedIndex;
  Function(int) onItemTapped;
   HomeBottomNavigation({super.key,
  required this.onItemTapped,
  required this.selectedIndex,
  });

  @override
  State<HomeBottomNavigation> createState() => _HomeBottomNavigationState();
}

class _HomeBottomNavigationState extends State<HomeBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: BottomNavigationBar(
        enableFeedback: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: widget.selectedIndex,
        onTap: widget.onItemTapped,
        selectedItemColor: ColorsHelper.primaryGreen,
        unselectedItemColor: Colors.grey.shade700,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Iconsax.element_3
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Iconsax.notification
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: ColorsHelper.primaryGreen, borderRadius: BorderRadius.circular(18)),
              child: Icon(
               Iconsax.add,
               size: 30,
                color: Colors.white,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Iconsax.clipboard_text
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
            Iconsax.setting_2
            ),
            label: '',
          ),
        ],
      ),
    );
  }


}
