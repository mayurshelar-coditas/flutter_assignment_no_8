import 'package:assignment8/core/theme/app_pallete.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileInformationWidget extends StatelessWidget {
  const ProfileInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppPallete.whiteColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color(0x08000000),
            offset: Offset(0, 10),
            blurRadius: 40,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 20,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset('assets/images/profile_photo.png'),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FittedBox(
                    child: Text(
                      'Marvis Ighedosa',
                      style: TextStyle(
                        fontFamily: 'sfProText',
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  FittedBox(
                    child: Text(
                      maxLines: 1,
                      overflow: TextOverflow.fade,
                      'dosamarvis@gmail.com',
                      style: TextStyle(
                        fontFamily: 'sfProText',
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: AppPallete.blackColor.withOpacity(0.5),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  Text(
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    'No 15 uti street off ovie palace road effurun delta state',
                    style: TextStyle(
                      color: AppPallete.blackColor.withOpacity(0.5),
                      fontFamily: 'sfProText',
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
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
