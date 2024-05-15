import 'package:assignment8/core/contants/contants.dart';
import 'package:assignment8/core/themes/app_pallete.dart';
import 'package:assignment8/features/home/data/models/cart_product_model.dart';
import 'package:assignment8/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:assignment8/features/home/presentation/widgets/custom_bottom_navigation_bar.dart';
import 'package:assignment8/features/home/presentation/widgets/tab_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDescriptionPage extends StatelessWidget {
  const ProductDescriptionPage({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    CartProductModel product = Constants.cartlistProducts[index];
    var mediaQuery = MediaQuery.of(context);
    var screenHeight = mediaQuery.size.height;
    var screenWidth = mediaQuery.size.width;
    return DefaultTabController(
      length: 3,
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: AppPallete.whiteColor,
            appBar: CustomAppBar(
              screenHeight: screenHeight,
              screenWidth: screenWidth,
              mediaQuery: mediaQuery,
            ),
            body: Padding(
              padding: EdgeInsets.only(
                top: screenHeight * 0.0358910,
                left: screenWidth * 0.032,
                right: screenWidth * 0.032,
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage(product.image),
                            width: screenWidth * 0.4533333,
                            height: screenHeight * 0.191831683,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: screenWidth * 0.05866667,
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
                                height: screenHeight * 0.01856,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: screenHeight * 0.008663366,
                                  horizontal: screenWidth * 0.016,
                                ),
                                color: AppPallete.blackColor,
                                child: Text(
                                  'BUY NOW',
                                  style: GoogleFonts.workSans(
                                    color: AppPallete.whiteColor,
                                    fontSize: screenWidth * 0.0426666,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: screenHeight * 0.01856,
                              ),
                              Text(
                                'ADD TO CART',
                                style: GoogleFonts.workSans(
                                  fontSize: screenWidth * 0.037333,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: screenHeight * 0.004950495,
                              ),
                              Container(
                                width: screenWidth * 0.2506666,
                                height: screenHeight * 0.0024752475,
                                decoration: const BoxDecoration(
                                  color: AppPallete.blackColor,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: SvgPicture.asset(
                          'assets/icons/wishlist_heart_icon.svg',
                          width: screenWidth * 0.0468,
                          height: screenHeight * 0.0155569,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.0356930693,
                  ),
                  Flexible(
                      child: TabBarWidget(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                  )),
                ],
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.822 + mediaQuery.padding.top,
            left: screenWidth * 0.029,
            right: screenWidth * 0.032,
            bottom: mediaQuery.padding.bottom,
            child: CustomBottomNavigationBar(
              screenHeight: screenHeight,
              screenWidth: screenWidth,
              bodyContext: context,
            ),
          ),
        ],
      ),
    );
  }
}
