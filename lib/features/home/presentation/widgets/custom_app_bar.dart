import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      required this.screenHeight,
      required this.screenWidth,
      required this.mediaQuery});

  final double screenHeight, screenWidth;
  final MediaQueryData mediaQuery;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: screenWidth * 0.032,
        top: mediaQuery.padding.top,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/icons/menu_bar.svg',
            height: screenHeight * 0.0173267327,
            width: screenWidth * 0.064,
          ),
          SizedBox(
            width: screenWidth * 0.048,
          ),
          Text(
            'bagzz',
            style: GoogleFonts.playfairDisplay(
              fontWeight: FontWeight.w700,
              fontSize: screenWidth * 0.05866,
            ),
          ),
          SizedBox(
            width: screenWidth * 0.584,
          ),
          CircleAvatar(
            backgroundImage:
                const AssetImage('assets/images/profile_photo.png'),
            radius: screenWidth * 0.04266,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(screenHeight * 0.08638);
}
