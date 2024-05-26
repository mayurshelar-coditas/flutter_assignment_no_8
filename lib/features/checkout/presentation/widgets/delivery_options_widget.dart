import 'package:assignment8/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class DeliveryOptionsWidget extends StatefulWidget {
  const DeliveryOptionsWidget({super.key});

  @override
  State<DeliveryOptionsWidget> createState() => _DeliveryOptionsWidgetState();
}

class _DeliveryOptionsWidgetState extends State<DeliveryOptionsWidget> {
  String selectedValue = "doorDelivery";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
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
            title: const Text(
              "Door delivery",
              style: TextStyle(
                fontSize: 17,
                color: AppPallete.blackColor,
                fontWeight: FontWeight.w500,
                fontFamily: 'sfProText',
              ),
            ),
            value: "doorDelivery",
            groupValue: selectedValue,
            onChanged: (String? value) {
              setState(() {
                selectedValue = "doorDelivery";
              });
            },
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
            title: const Text(
              "Pick up",
              style: TextStyle(
                fontSize: 17,
                color: AppPallete.blackColor,
                fontWeight: FontWeight.w500,
                fontFamily: 'sfProText',
              ),
            ),
            value: "pickUp",
            groupValue: selectedValue,
            onChanged: (String? value) {
              setState(() {
                selectedValue = "pickUp";
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
