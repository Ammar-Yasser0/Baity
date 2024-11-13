import 'package:baity/utils/constants/colors.dart';
import 'package:baity/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import 'filter.dart';
import 'offers.dart';
import 'search.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      expandedHeight: 400,
      toolbarHeight: 40,
      elevation: 20,
      pinned: true,
      backgroundColor: FColors.primary,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(
            top: 70,
            left: 10,
            right: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              // Greeting & Profile icon
              Greeting(),
              const SizedBox(height: FSizes.spaceBtwItems),
              Offers(),
              SizedBox(height: FSizes.spaceBtwItems),
              // Search Bar with filter icon
              Row(
                children: [
                  // Search Field
                  const Expanded(child: HomeSearch()),
                  const SizedBox(width: 10),
                  SearchFilter()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Greeting extends StatelessWidget {
  const Greeting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextTheme textThemeData = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'أهلا بك',
          style: textThemeData.headlineLarge!
              .copyWith(fontSize: 50, color: FColors.white),
        ),
        Text(
          'اطلب طعامك المفضل',
          style: textThemeData.headlineMedium!
              .copyWith(color: FColors.white.withOpacity(0.5)),
        )
      ],
    );
  }
}

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 25,
      backgroundColor: FColors.grey,
      child: Icon(
        Icons.person,
        size: 35,
        color: FColors.accent,
      ),
    );
  }
}
