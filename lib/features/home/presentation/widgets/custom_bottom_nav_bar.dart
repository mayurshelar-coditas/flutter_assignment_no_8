import 'package:assignment8/core/theme/app_pallete.dart';
import 'package:assignment8/features/history/pages/history_page.dart';
import 'package:assignment8/features/my_profile/presentation/pages/my_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Container(
        color: AppPallete.secondBackground,
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFFD73800).withOpacity(0.4),
                      offset:
                          const Offset(0, 6), // Vertical offset of the shadow
                      blurRadius: 20, // Blur radius
                      spreadRadius: 0, // Spread radius
                    ),
                  ],
                ),
                child: SvgPicture.asset(
                  'assets/icons/home.svg',
                ),
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HistoryPage(),
                ),
              ),
              icon: SvgPicture.asset('assets/icons/heart.svg'),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyProfilePage(),
                ),
              ),
              icon: SvgPicture.asset('assets/icons/user.svg'),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HistoryPage(),
                ),
              ),
              icon: SvgPicture.asset('assets/icons/history.svg'),
            ),
          ],
        ),
      ),
    );
  }
}
