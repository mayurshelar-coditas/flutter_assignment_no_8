import 'package:assignment8/core/themes/app_pallete.dart';
import 'package:assignment8/features/home/data/models/cart_product_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartCardDetailsWidget extends StatelessWidget {
  const CartCardDetailsWidget(
      {super.key,
      required this.product,
      required this.screenHeight,
      required this.screenWidth,
      required this.count});

  final CartProductModel product;
  final double screenHeight, screenWidth;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          children: [
            Image(
              image: AssetImage(product.image),
              height: screenHeight * 0.1002,
              width: screenWidth * 0.216,
            ),
            SizedBox(
              height: screenHeight * 0.0123762,
            ),
            Row(
              children: [
                Container(
                  width: screenWidth * 0.0773333,
                  height: screenHeight * 0.0309405,
                  color: AppPallete.blackColor,
                  child: Center(
                    child: Text(
                      '-',
                      style: GoogleFonts.workSans(
                        fontSize: screenWidth * 0.042666,
                        fontWeight: FontWeight.w700,
                        color: AppPallete.whiteColor,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: screenWidth * 0.0773333,
                  height: screenHeight * 0.0309405,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: screenWidth * 0.00266667,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '$count',
                      style: GoogleFonts.workSans(
                        fontSize: screenWidth * 0.042666,
                        fontWeight: FontWeight.w500,
                        color: AppPallete.blackColor,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: screenWidth * 0.0773333,
                  height: screenHeight * 0.0309405,
                  color: AppPallete.blackColor,
                  child: Center(
                    child: Text(
                      '+',
                      style: GoogleFonts.workSans(
                          fontSize: screenWidth * 0.042666,
                          fontWeight: FontWeight.w700,
                          color: AppPallete.whiteColor),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          width: screenWidth * 0.0773333,
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
              height: screenHeight * 0.0208910,
            ),
            Text(
              '\$${product.price}',
              style: GoogleFonts.workSans(
                fontSize: screenWidth * 0.048,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.004950495,
            ),
          ],
        )
      ],
    );
  }
}
