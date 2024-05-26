import 'package:assignment8/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class ProfileInfoWidget extends StatelessWidget {
  const ProfileInfoWidget({super.key});

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
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 10,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 90,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                'assets/images/profile_photo.png',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Marvis Ighedosa',
                    style: TextStyle(
                      fontFamily: 'sfProText',
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Dosamarvis@gmail.com',
                    style: TextStyle(
                      fontFamily: 'sfProText',
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: AppPallete.blackColor.withOpacity(0.5),
                    ),
                  ),
                  Divider(
                    height: 7,
                    color: AppPallete.blackColor.withOpacity(0.2),
                    thickness: 0.6,
                    indent: 1,
                    endIndent: 16,
                  ),
                  Text(
                    '+234 9011039271',
                    style: TextStyle(
                      fontFamily: 'sfProText',
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: AppPallete.blackColor.withOpacity(0.5),
                    ),
                  ),
                  Divider(
                    height: 7,
                    color: AppPallete.blackColor.withOpacity(0.2),
                    thickness: 0.6,
                    indent: 1,
                    endIndent: 16,
                  ),
                  Text(
                    // maxLines: 2,
                    // overflow: TextOverflow.ellipsis,
                    'No 15 uti street off ovie palace road effurun delta state',
                    style: TextStyle(
                      color: AppPallete.blackColor.withOpacity(0.5),
                      fontFamily: 'sfProText',
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
