import 'package:assignment8/core/theme/app_pallete.dart';
import 'package:assignment8/features/my_profile/presentation/widgets/payment_option_widget.dart';
import 'package:assignment8/features/my_profile/presentation/widgets/profile_information_widget.dart';
import 'package:flutter/material.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallete.thirdBackground,
      appBar: AppBar(
        leadingWidth: 98,
        backgroundColor: AppPallete.thirdBackground,
        title: const Text(
          'My Profile',
          style: TextStyle(
            fontFamily: 'sfProText',
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              flex: 3,
              child: SizedBox(
                  // height: 40,
                  ),
            ),
            const Text(
              'Information',
              style: TextStyle(
                fontFamily: 'sfProText',
                fontWeight: FontWeight.w700,
                fontSize: 17,
              ),
            ),
            // const SizedBox(
            //   height: 12,
            // ),
            const Expanded(
              child: SizedBox(),
            ),
            const ProfileInformationWidget(),
            // SizedBox(
            //   height: 48,
            // ),
            const Expanded(flex: 2, child: SizedBox()),
            const Text(
              'Payment Method',
              style: TextStyle(
                fontFamily: 'sfProText',
                fontWeight: FontWeight.w700,
                fontSize: 17,
              ),
            ),
            // SizedBox(
            //   height: 22,
            // ),
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            const PaymentOptionsWidget(),
            const Expanded(
              flex: 15,
              child: SizedBox(),
            ),
            SizedBox(
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
                    vertical: 25,
                  ),
                  child: Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    'Update',
                    style: TextStyle(
                      fontFamily: 'sfProText',
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
          ],
        ),
      ),
    );
  }
}
