import 'package:bookly_ca/core/helper/assets.dart';
import 'package:bookly_ca/core/helper/constants.dart';
import 'package:flutter/material.dart';

class FeaturedListviewitem extends StatelessWidget {
  const FeaturedListviewitem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetsData.test),
            fit: BoxFit.fill,
          ),
          color: kBlackColor,
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
