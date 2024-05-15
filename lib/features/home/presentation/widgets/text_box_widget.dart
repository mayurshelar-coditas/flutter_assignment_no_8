import 'package:assignment8/core/themes/app_pallete.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class TextBoxWidget extends StatelessWidget {
  const TextBoxWidget(
      {super.key,
      required this.screenWidth,
      required this.screenHeight,
      required this.textToDisplay});

  final double screenWidth, screenHeight;
  final String textToDisplay;

  @override
  Widget build(Object context) {
    return Center(
      child: Container(
        padding: EdgeInsets.fromLTRB(
          screenWidth * 0.042666667,
          screenHeight * 0.0099009901,
          screenWidth * 0.042666667,
          screenHeight * 0.0099009901,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            width: screenWidth * 0.002666,
            color: AppPallete.blackColor,
          ),
        ),
        child: Text(
          textToDisplay,
          textAlign: TextAlign.center,
          style: GoogleFonts.workSans(
            fontWeight: FontWeight.w500,
            fontSize: screenWidth * 0.0426666,
          ),
        ),
      ),
    );
  }
}
