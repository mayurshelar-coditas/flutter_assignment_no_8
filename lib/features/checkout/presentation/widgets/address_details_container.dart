import 'package:assignment8/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AddressDetailsContainer extends StatelessWidget {
  const AddressDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppPallete.whiteColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: const Color(0x08000000).withOpacity(0.03),
            offset: const Offset(0, 10),
            blurRadius: 40,
            spreadRadius: 0,
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 24,
      ),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Marvis Kparobo",
              style: TextStyle(
                fontFamily: 'sfProTextBold',
                fontWeight: FontWeight.w500,
                fontSize: 17,
                color: AppPallete.blackColor,
              ),
            ),
            Divider(
              height: 12,
              color: AppPallete.blackColor.withOpacity(0.2),
              thickness: 0.6,
              indent: 1,
              endIndent: 14,
            ),
            const Text(
              "Km 5 refinery road oppsite re public road, effurun, delta state",
              style: TextStyle(
                fontFamily: 'sfProText',
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: AppPallete.blackColor,
                // height: 1.2,
              ),
            ),
            Divider(
              height: 12,
              color: AppPallete.blackColor.withOpacity(0.2),
              thickness: 0.6,
              indent: 1,
              endIndent: 14,
            ),
            const Text(
              "+234 9011039271",
              style: TextStyle(
                color: AppPallete.blackColor,
                fontFamily: 'sfProText',
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
