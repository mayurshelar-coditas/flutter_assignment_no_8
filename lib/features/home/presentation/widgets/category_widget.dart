import 'package:assignment8/core/themes/app_pallete.dart';
import 'package:assignment8/features/home/data/models/category_container_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget(
      {super.key,
      required this.category,
      required this.screenHeight,
      required this.screenWidth});

  final CategoryContainerModel category;
  final double screenHeight, screenWidth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 0,
          child: Image(
            image: AssetImage(
              category.categoryImage,
            ),
            height: 0.277227723 * screenHeight,
            width: 0.453333 * screenWidth,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            decoration: const BoxDecoration(color: AppPallete.blackColor),
            padding: EdgeInsets.symmetric(
              vertical: 0.0099009901 * screenHeight,
              horizontal: 0.032 * screenWidth,
            ),
            child: Text(
              category.category,
              style: GoogleFonts.playfairDisplay(
                  fontWeight: FontWeight.w700,
                  color: AppPallete.whiteColor,
                  fontSize: 0.042666 * screenWidth),
            ),
          ),
        )
      ],
    );
  }
}
