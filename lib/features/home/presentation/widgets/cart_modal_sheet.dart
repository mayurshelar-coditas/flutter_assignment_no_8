import 'package:assignment8/core/contants/contants.dart';
import 'package:assignment8/core/themes/app_pallete.dart';
import 'package:assignment8/features/home/presentation/widgets/cart_card_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartModalSheet extends StatelessWidget {
  const CartModalSheet(
      {super.key, required this.screenHeight, required this.screenWidth});

  final double screenWidth, screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 63.3663366,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(screenWidth * 0.106667),
            topRight: Radius.circular(screenWidth * 0.106667)),
      ),
      child: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.0123762,
          ),
          InkWell(
            onTap: () => Navigator.pop(context),
            child: Container(
              height: screenHeight * 0.00247524,
              width: screenWidth * 0.333333,
              color: AppPallete.blackColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: screenWidth * 0.05866667,
              top: screenHeight * 0.082920,
            ),
            child: Column(
              children: [
                CartCardDetailsWidget(
                  product: Constants.cartlistProducts[0],
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                  count: 1,
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: screenHeight * 0.025999,
                    bottom: screenHeight * 0.021039,
                  ),
                  height: screenHeight * 0.0012376238,
                  width: screenWidth * 0.7733333,
                  color: AppPallete.blackColor,
                ),
                CartCardDetailsWidget(
                  product: Constants.cartlistProducts[1],
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                  count: 2,
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * 0.05445544,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: screenHeight * 0.0148514,
                horizontal: screenWidth * 0.064,
              ),
              color: AppPallete.blackColor,
              child: Text(
                'PROCEED TO BUY',
                style: GoogleFonts.workSans(
                  color: AppPallete.whiteColor,
                  fontSize: screenWidth * 0.0426666,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
