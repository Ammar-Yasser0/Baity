import 'package:flutter/material.dart';

import 'bottom_nav_bar.dart';
import 'home_app_bar.dart';
import 'home_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const List<Widget> body = [Text('hello')];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const HomeAppBar(),
        ],
        body: HomeContent(),
      ),
    );
  }
}


