import 'package:baity/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class FoodType extends StatelessWidget {
  const FoodType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(
          20,
        ), // Adjust the radius as needed
        child: Stack(
          children: [
            SizedBox.expand(
              child: Image.asset(
                'assets/images/EgyFood.jpg',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox.expand(
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: FColors.black.withOpacity(0.4)),
                child: Text(
                  'أكلات مصرية',
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(color: FColors.white),
                ),
              ),
            )
          ],
        ),
      
    );
  }
}