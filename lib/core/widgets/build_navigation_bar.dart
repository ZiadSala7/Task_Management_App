import 'package:flutter/material.dart';

import '../../constants.dart';
import '../utils/app_colors.dart';
import 'floating_action_button_bottom_bar.dart';

class BuildNavigationBar extends StatefulWidget {
  static const String id = 'buildNavigationBar';
  const BuildNavigationBar({super.key});

  @override
  State<BuildNavigationBar> createState() => _BuildNavigationBarState();
}

class _BuildNavigationBarState extends State<BuildNavigationBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: pages[_currentIndex],
      floatingActionButton: FloatingActionButtonBottomBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: AppColors.bottomNavClr,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: _buildNavItemRowList,
        ),
      ),
    );
  }

  List<Widget> get _buildNavItemRowList {
    return [
      _buildNavItem(Icons.home, 'Home', 0),
      _buildNavItem(Icons.calendar_month, 'Calendar', 1),
      const SizedBox(width: 40), // space for FAB
      _buildNavItem(Icons.access_time, 'Focus', 2),
      _buildNavItem(Icons.person_outline_sharp, 'Profile', 3),
    ];
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    final isSelected = _currentIndex == index;
    return InkWell(
      onTap: () => setState(() => _currentIndex = index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: isSelected ? Colors.white : Colors.grey[400]),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.grey[400],
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
