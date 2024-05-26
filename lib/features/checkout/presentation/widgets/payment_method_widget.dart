import 'package:assignment8/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodWidget extends StatefulWidget {
  const PaymentMethodWidget({super.key});

  @override
  State<PaymentMethodWidget> createState() => _PaymentMethodWidgetState();
}

class _PaymentMethodWidgetState extends State<PaymentMethodWidget> {
  String selectedValue = "card";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, bottom: 64),
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
      child: Column(
        children: [
          RadioListTile<String>(
            value: "card",
            groupValue: selectedValue,
            onChanged: (String? value) {
              setState(
                () {
                  selectedValue = "card";
                },
              );
            },
            title: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: const BoxDecoration(
                    color: AppPallete.orangeColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: SvgPicture.asset("assets/icons/card.svg"),
                ),
                const SizedBox(
                  width: 12,
                ),
                const Flexible(
                  child: Text(
                    "Card",
                    style: TextStyle(
                      fontSize: 17,
                      color: AppPallete.blackColor,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'sfProText',
                    ),
                  ),
                ),
              ],
            ),
            activeColor: AppPallete.primaryColor,
            visualDensity: VisualDensity.compact,
          ),
          Divider(
            height: 22,
            color: AppPallete.blackColor.withOpacity(0.3),
            thickness: 0.6,
            indent: 66,
            endIndent: 40,
          ),
          RadioListTile<String>(
            title: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: const BoxDecoration(
                    color: AppPallete.bankAccountContainerColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: SvgPicture.asset("assets/icons/bank.svg"),
                ),
                const SizedBox(
                  width: 12,
                ),
                const Flexible(
                  child: Text(
                    "Bank account",
                    style: TextStyle(
                      fontSize: 17,
                      color: AppPallete.blackColor,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'sfProText',
                    ),
                  ),
                ),
              ],
            ),
            value: "bankAccount",
            groupValue: selectedValue,
            onChanged: (String? value) {
              setState(() {
                selectedValue = "bankAccount";
              });
            },
            activeColor: AppPallete.primaryColor,
            visualDensity: VisualDensity.compact,
          ),
        ],
      ),
    );
  }
}
