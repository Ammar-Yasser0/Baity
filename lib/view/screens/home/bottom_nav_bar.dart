import 'package:baity/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: FColors.primary,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      onDestinationSelected: (index) {},
      selectedIndex: 0,
      destinations: const [
        NavigationIcon(
          label: 'بيتك',
          icon: Icons.home_outlined,
          selectedIcon: Icons.home_filled,
        ),
        NavigationIcon(
          label: 'المفضلة',
          icon: Icons.favorite_outline,
          selectedIcon: Icons.favorite,
        ),
        NavigationIcon(
          label: 'الصفحة الشخصية',
          icon: Icons.person_outlined,
          selectedIcon: Icons.person,
        ),
        NavigationIcon(
          label: 'الإعدادات',
          icon: Icons.settings_outlined,
          selectedIcon: Icons.settings,
        ),
      ],
    );
  }
}

class NavigationIcon extends StatelessWidget {
  const NavigationIcon({
    super.key,
    required this.label,
    required this.icon,
    required this.selectedIcon,
  });

  final String label;
  final IconData icon, selectedIcon;

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      icon: Icon(icon),
      selectedIcon: Icon(
        selectedIcon,
        color: FColors.black,
      ),
      label: label,
    );
  }
}