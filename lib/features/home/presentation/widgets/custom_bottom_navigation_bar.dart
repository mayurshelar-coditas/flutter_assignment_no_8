import 'package:assignment8/core/themes/app_pallete.dart';
import 'package:assignment8/features/home/presentation/pages/home_page.dart';
import 'package:assignment8/features/home/presentation/pages/search_page.dart';
import 'package:assignment8/features/home/presentation/widgets/cart_modal_sheet.dart';

import 'package:assignment8/features/home/presentation/widgets/wishlist_modal_sheet.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar(
      {super.key,
      required this.screenHeight,
      required this.screenWidth,
      required this.bodyContext});

  final double screenHeight, screenWidth;
  final BuildContext bodyContext;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.0804455446,
      width: screenWidth * 0.938,
      decoration: BoxDecoration(
        color: AppPallete.whiteColor,
        borderRadius: BorderRadius.circular(69),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.14),
            offset: Offset(0, 14),
            blurRadius: 56,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    HomePage(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return child; // No animation, directly show the new page
                },
              ),
            ),
            child: SvgPicture.asset(
              'assets/icons/home_icon.svg',
              height: screenHeight * 0.0247524752,
              width: screenWidth * 0.048,
            ),
          ),
          SizedBox(
            width: screenWidth * 0.1706,
          ),
          GestureDetector(
            onTap: () => Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    SearchPage(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return child; // No animation, directly show the new page
                },
              ),
            ),
            // showModalBottomSheet(
            //   context: context,
            //   isScrollControlled: true,
            //   builder: (BuildContext context) => SearchProductWidget(
            //     screenHeight: screenHeight,
            //     screenWidth: screenWidth,
            //   ),

            child: SvgPicture.asset(
              'assets/icons/search_icon.svg',
              height: screenHeight * 0.0247524752,
              width: screenWidth * 0.048,
            ),
          ),
          SizedBox(
            width: screenWidth * 0.1706,
          ),
          GestureDetector(
            onTap: () => showModalBottomSheet(
              isScrollControlled: true,
              useSafeArea: true,
              context: bodyContext,
              backgroundColor: Colors.transparent,
              builder: (BuildContext context) => SizedBox(
                height: screenHeight * 0.633663366 +
                    MediaQuery.of(context).padding.bottom,
                child: WishListModalSheet(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                ),
              ),
            ),
            child: SvgPicture.asset(
              'assets/icons/wishlist_icon.svg',
              height: screenHeight * 0.0247524752,
              width: screenWidth * 0.048,
            ),
          ),
          SizedBox(
            width: screenWidth * 0.1706,
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: screenWidth * 0.0358514,
            ),
            child: GestureDetector(
              onTap: () => showModalBottomSheet(
                isScrollControlled: true,
                useSafeArea: false,
                context: bodyContext,
                backgroundColor: Colors.transparent,
                builder: (BuildContext context) => SizedBox(
                  height: screenHeight * 0.633663366 +
                      MediaQuery.of(context).padding.bottom,
                  child: CartModalSheet(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                  ),
                ),
              ),
              child: SvgPicture.asset(
                'assets/icons/cart_icon.svg',
                height: screenHeight * 0.0377524752,
                width: screenWidth * 0.048,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
