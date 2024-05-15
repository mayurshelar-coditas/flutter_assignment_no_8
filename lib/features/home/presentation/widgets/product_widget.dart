import 'package:assignment8/core/themes/app_pallete.dart';
import 'package:assignment8/features/home/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget(
      {super.key,
      required this.screenHeight,
      required this.screenWidth,
      required this.product});

  final double screenHeight, screenWidth;
  final ProductModel product;

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  bool isFilled = false;
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppPallete.productCardBackgroundColor,
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            top: 0,
            bottom: 0,
            child: Padding(
              padding: EdgeInsets.only(
                top: widget.screenHeight * 0.0086633,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image(
                    image: AssetImage(widget.product.productImage),
                    height: widget.screenHeight * 0.137376238,
                    width: widget.screenWidth * 0.296,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: widget.screenHeight * 0.014397,
                  ),
                  Text(
                    widget.product.title,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.playfairDisplay(
                      fontSize: widget.screenWidth * 0.048,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: widget.screenHeight * 0.0198019802,
                  ),
                  Text(
                    'SHOP NOW',
                    style: GoogleFonts.workSans(
                      fontSize: widget.screenWidth * 0.037333,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: widget.screenHeight * 0.004950495,
                  ),
                  Container(
                    width: widget.screenWidth * 0.23466667,
                    height: widget.screenHeight * 0.0024752475,
                    decoration: const BoxDecoration(
                      color: AppPallete.blackColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: -10,
            right: -5,
            child: IconButton(
              icon: SvgPicture.asset(
                isFilled
                    ? 'assets/icons/wishlist_icon.svg'
                    : 'assets/icons/wishlist_heart_icon.svg',
                width: widget.screenWidth * 0.0426666,
                height: widget.screenHeight * 0.0164528,
              ),
              onPressed: () {
                setState(() {
                  isFilled = !isFilled;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
