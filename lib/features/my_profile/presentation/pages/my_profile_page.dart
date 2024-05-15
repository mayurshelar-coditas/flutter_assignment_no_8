import 'package:assignment8/core/theme/app_pallete.dart';
import 'package:assignment8/features/my_profile/presentation/widgets/payment_option_widget.dart';
import 'package:assignment8/features/my_profile/presentation/widgets/profile_information_widget.dart';
import 'package:flutter/material.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: AppPallete.thirdBackground,
          appBar: AppBar(
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
          body: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 46,
                ),
                Text(
                  'Information',
                  style: TextStyle(
                    fontFamily: 'sfProText',
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                ProfileInformationWidget(),
                SizedBox(
                  height: 48,
                ),
                Text(
                  'Payment Method',
                  style: TextStyle(
                    fontFamily: 'sfProText',
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                PaymentOptionsWidget(),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.only(left: 50, right: 50, bottom: 41),
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
        ),
      ],
    );
  }
}
