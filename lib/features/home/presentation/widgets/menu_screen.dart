import 'package:assignment8/core/theme/app_pallete.dart';
import 'package:assignment8/features/home/presentation/pages/offers_page.dart';
import 'package:assignment8/features/my_profile/presentation/pages/my_profile_update_page.dart';
import 'package:assignment8/features/orders/presentation/pages/orders_page.dart';
import 'package:assignment8/features/search/presentation/pages/search_food_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallete.primaryColor,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 160,
            ),
            Row(
              children: [
                SvgPicture.asset("assets/icons/profile.svg"),
                Flexible(
                  child: TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyProfileUpdatePage(),
                      ),
                    ),
                    child: Text(
                      "Profile",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: AppPallete.whiteColor,
                      ),
                      // overflow: TextOverflow.ellipsis,
                      // maxLines: 1,
                    ),
                  ),
                ),
              ],
            ),
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Divider(
              height: 0.3,
              color: const Color(0xFFF4F4F8).withOpacity(0.4),
              thickness: 0.5,
              indent: 20,
              endIndent: 16,
            ),
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Row(
              children: [
                SvgPicture.asset("assets/icons/menu_cart.svg"),
                Flexible(
                  child: TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OrdersPage(),
                      ),
                    ),
                    child: Text(
                      "orders",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: AppPallete.whiteColor,
                      ),
                      // overflow: TextOverflow.ellipsis,
                      // maxLines: 1,
                    ),
                  ),
                ),
              ],
            ),
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Divider(
              height: 0.3,
              color: const Color(0xFFF4F4F8).withOpacity(0.4),
              thickness: 0.5,
              indent: 20,
              endIndent: 16,
            ),
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Row(
              children: [
                SvgPicture.asset("assets/icons/menu_offers.svg"),
                Flexible(
                  child: TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OffersPage(),
                      ),
                    ),
                    child: Text(
                      "offer and promo",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: AppPallete.whiteColor,
                      ),
                      // overflow: TextOverflow.ellipsis,
                      // maxLines: 1,
                    ),
                  ),
                ),
              ],
            ),
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Divider(
              height: 0.3,
              color: const Color(0xFFF4F4F8).withOpacity(0.4),
              thickness: 0.5,
              indent: 20,
              endIndent: 16,
            ),
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Row(
              children: [
                SvgPicture.asset("assets/icons/menu_privacy.svg"),
                Flexible(
                  child: TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SearchFoodItem(),
                      ),
                    ),
                    child: Text(
                      "Privacy policy",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: AppPallete.whiteColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Divider(
              height: 0.3,
              color: const Color(0xFFF4F4F8).withOpacity(0.4),
              thickness: 0.5,
              indent: 20,
              endIndent: 16,
            ),
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Row(
              children: [
                SvgPicture.asset("assets/icons/menu_security.svg"),
                Flexible(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Security",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: AppPallete.whiteColor,
                      ),
                      // overflow: TextOverflow.ellipsis,
                      // maxLines: 1,
                    ),
                  ),
                ),
              ],
            ),
            const Expanded(
              flex: 20,
              child: SizedBox(),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Sign-out ->",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                  color: AppPallete.whiteColor,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
            const SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
