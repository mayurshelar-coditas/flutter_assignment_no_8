import 'package:assignment8/core/themes/app_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchProductWidget extends StatefulWidget {
  const SearchProductWidget({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight, screenWidth;

  @override
  State<SearchProductWidget> createState() => _SearchProductWidgetState();
}

class _SearchProductWidgetState extends State<SearchProductWidget> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppPallete.whiteColor,
      height: widget.screenHeight * 0.840346,
      child: Column(
        children: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: Container(
              padding: EdgeInsets.symmetric(
                  vertical: widget.screenHeight * 0.014851,
                  horizontal: 0.029333),
              child: SvgPicture.asset('assets/icons/cancel_button_icon.svg'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: widget.screenWidth * 0.07733333,
              right: widget.screenWidth * 0.07733333,
            ),
            child: TextField(
                controller: textEditingController,
                decoration: const InputDecoration(
                  labelText: 'Type here to search',
                ),
                style: GoogleFonts.workSans(
                  fontSize: widget.screenWidth * 0.056,
                  fontWeight: FontWeight.w400,
                )),
          ),
        ],
      ),
    );
  }
}
