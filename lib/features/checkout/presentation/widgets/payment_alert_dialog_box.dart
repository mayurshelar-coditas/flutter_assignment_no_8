import 'package:assignment8/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentAlertDialogBox extends StatelessWidget {
  const PaymentAlertDialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: AppPallete.greyColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 16),
          child: Text(
            "Please note",
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
          decoration: const BoxDecoration(
            color: AppPallete.whiteColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Delivery to Mainland",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: AppPallete.blackColor.withOpacity(0.5),
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "N1000 - N2000",
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  color: AppPallete.blackColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Divider(
                height: 18,
                color: AppPallete.blackColor.withOpacity(0.5),
                thickness: 0.5,
                indent: 1,
                endIndent: 10,
              ),
              Text(
                "Delivery to island",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: AppPallete.blackColor.withOpacity(0.5),
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "N2000 - N3000",
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  color: AppPallete.blackColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 34,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Cancel",
                      style: GoogleFonts.poppins(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: AppPallete.blackColor.withOpacity(0.5),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                      child: FilledButton(
                        onPressed: () {},
                        style: FilledButton.styleFrom(
                          backgroundColor: AppPallete.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 16,
                          ),
                          child: Flexible(
                            child: Text(
                              "Proceed",
                              style: TextStyle(
                                fontSize: 17,
                                color: AppPallete.whiteColor,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'sfProText',
                              ),
                              maxLines: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
