import 'package:assignment8/core/themes/app_pallete.dart';
import 'package:assignment8/features/home/data/models/wishlist_product_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WishlistCardDetailsWidget extends StatelessWidget {
  const WishlistCardDetailsWidget(
      {super.key,
      required this.product,
      required this.screenHeight,
      required this.screenWidth});

  final WishlistProductModel product;
  final double screenHeight, screenWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(
          image: AssetImage(product.image),
        ),
        SizedBox(
          width: screenWidth * 0.0346666,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.title,
              style: GoogleFonts.playfairDisplay(
                fontSize: screenWidth * 0.048,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.006188,
            ),
            Text(
              product.description,
              style: GoogleFonts.workSans(
                fontSize: screenWidth * 0.0373333,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.start,
            ),
            Text(
              product.styleAndModelNumber,
              style: GoogleFonts.workSans(
                fontSize: screenWidth * 0.032,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF848484),
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: screenHeight * 0.0173267,
            ),
            Text(
              'Remove',
              style: GoogleFonts.workSans(
                fontSize: screenWidth * 0.0373333,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.004950495,
            ),
            Container(
              height: screenHeight * 0.00247524,
              width: screenWidth * 0.1573333,
              color: AppPallete.blackColor,
            ),
          ],
        )
      ],
    );
  }
}
