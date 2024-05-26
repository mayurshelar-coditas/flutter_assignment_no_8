import 'package:assignment8/core/theme/app_pallete.dart';

import 'package:flutter/material.dart';

class SignInWidget extends StatefulWidget {
  const SignInWidget({super.key});

  @override
  State<SignInWidget> createState() => _SignInWidgetState();
}

class _SignInWidgetState extends State<SignInWidget> {
  final TextEditingController _userNameEditingController =
      TextEditingController();

  final TextEditingController _passwordEditingController =
      TextEditingController();

  @override
  void dispose() {
    _userNameEditingController.dispose();
    _passwordEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Expanded(
            flex: 2,
            child: SizedBox(),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Email address',
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                  fontFamily: 'sfProText',
                  color: Colors.black.withOpacity(0.4),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppPallete.blackColor,
                    width: 0.5,
                  ),
                ),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppPallete.blackColor,
                    width: 0.5,
                  ),
                ),
              ),
              style: const TextStyle(
                fontFamily: 'sfProText',
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Expanded(
            flex: 1,
            child: SizedBox(),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: TextField(
              obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                  fontFamily: 'sfProText',
                  color: AppPallete.blackColor.withOpacity(0.4),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppPallete.blackColor,
                    width: 0.5,
                  ),
                ),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppPallete.blackColor,
                    width: 0.5,
                  ),
                ),
              ),
              style: const TextStyle(
                letterSpacing: 4,
                fontFamily: 'sfProText',
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Expanded(
            flex: 1,
            child: SizedBox(),
          ),
          TextButton(
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.transparent),
            ),
            onPressed: () {},
            child: const Flexible(
              child: Text(
                // textScaler: MediaQuery.textScalerOf(context).scale(17) > 1.5
                //     ? const TextScaler.linear(1.5)
                //     : MediaQuery.textScalerOf(context),
                textAlign: TextAlign.start,
                'Forgot passcode?',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'sfProText',
                  color: AppPallete.primaryColor,
                ),
              ),
            ),
          ),
          const Expanded(
            flex: 12,
            child: SizedBox(),
          ),
          const SizedBox(
            height: 41,
          ),
        ],
      ),
    );
  }
}
