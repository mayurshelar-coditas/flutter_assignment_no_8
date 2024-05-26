import 'package:assignment8/core/theme/app_pallete.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallete.thirdBackground,
      appBar: AppBar(
        leadingWidth: 96,
        backgroundColor: AppPallete.thirdBackground,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 46,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              textAlign: TextAlign.center,
              "My Offers",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 34,
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Center(
              child: Text(
                textAlign: TextAlign.center,
                "ohh snap!  No offers yet",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 26,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Center(
              child: Text(
                textAlign: TextAlign.center,
                "Bella dose’t have any offers\nyet please check again.",
                style: GoogleFonts.poppins(
                  color: AppPallete.blackColor.withOpacity(0.57),
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                ),
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
