import 'package:assignment8/core/theme/app_pallete.dart';
import 'package:assignment8/features/authentication/presentation/pages/authentication_page.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallete.onboardingBackground,
      body: Stack(
        children: [
          const Positioned(
            child: Padding(
              padding: EdgeInsets.only(
                bottom: 94,
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 30,
                    right: 0,
                    child: Image(
                      image: AssetImage(
                        'assets/images/toy_face_two.png',
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -100,
                    right: -10,
                    child: Image(
                      image: AssetImage(
                        'assets/images/face_two_gradient.png',
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Image(
                      image: AssetImage(
                        'assets/images/toy_face_one.png',
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -50,
                    left: -30,
                    child: Image(
                      width: 358,
                      image: AssetImage(
                        "/Users/coditas/Documents/assignment8/assets/images/face_one_grad.png",
                      ),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(48, 56, 48, 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 73,
                  width: 73,
                  decoration: const BoxDecoration(
                    color: AppPallete.whiteColor,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 14,
                    ),
                    child: Image.asset(
                      'assets/images/Bella.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
                const Text(
                  'Food for\nEveryone',
                  style: TextStyle(
                    fontFamily: "sfProRounded",
                    fontSize: 65,
                    fontWeight: FontWeight.w800,
                    color: AppPallete.whiteColor,
                    height: 0.860,
                  ),
                ),
                const Expanded(
                  flex: 18,
                  child: SizedBox(),
                ),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AuthenticationPage(),
                      ),
                    ),
                    style: FilledButton.styleFrom(
                      backgroundColor: AppPallete.whiteColor,
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
                        'Get started',
                        style: TextStyle(
                          color: AppPallete.primaryColor,
                          fontFamily: 'sfProText',
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
