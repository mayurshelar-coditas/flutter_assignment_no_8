import 'package:assignment8/core/themes/app_pallete.dart';
import 'package:assignment8/features/home/presentation/pages/home_page.dart';
import 'package:assignment8/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:assignment8/features/home/presentation/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});

  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenHeight = mediaQuery.size.height;
    var screenWidth = mediaQuery.size.width;

    return Stack(
      children: [
        Scaffold(
          backgroundColor: AppPallete.whiteColor,
          appBar: CustomAppBar(
            screenHeight: screenHeight,
            screenWidth: screenWidth,
            mediaQuery: mediaQuery,
          ),
          body: Container(
            color: AppPallete.whiteColor,
            height: screenHeight * 0.840346,
            child: Column(
              children: [
                InkWell(
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
                  child: Container(
                    margin: EdgeInsets.only(
                        top: screenHeight * 0.039603,
                        left: screenWidth * 0.8213333),
                    padding: EdgeInsets.symmetric(
                        vertical: screenHeight * 0.014851,
                        horizontal: 0.029333),
                    child: SvgPicture.asset(
                        '/Users/coditas/Documents/assignment8/assets/icons/cancel_button_icon.svg'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: screenWidth * 0.07733333,
                    right: screenWidth * 0.07733333,
                  ),
                  child: TextField(
                      controller: textEditingController,
                      decoration: const InputDecoration(
                        labelText: 'Type here to search',
                      ),
                      style: GoogleFonts.workSans(
                        fontSize: screenWidth * 0.056,
                        fontWeight: FontWeight.w400,
                      )),
                ),
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
    );
  }
}
