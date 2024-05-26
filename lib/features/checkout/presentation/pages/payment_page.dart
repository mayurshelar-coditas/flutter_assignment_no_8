import 'package:assignment8/core/theme/app_pallete.dart';

import 'package:assignment8/features/checkout/presentation/widgets/delivery_options_widget.dart';
import 'package:assignment8/features/checkout/presentation/widgets/payment_alert_dialog_box.dart';

import 'package:assignment8/features/checkout/presentation/widgets/payment_method_widget.dart';

import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallete.thirdBackground,
      appBar: AppBar(
        leadingWidth: 96,
        backgroundColor: AppPallete.thirdBackground,
        title: const Text(
          'Checkout',
          style: TextStyle(
            fontFamily: 'sfProText',
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 50,
            vertical: 28,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Payment",
                style: TextStyle(
                  fontFamily: "sfProText",
                  fontWeight: FontWeight.w600,
                  fontSize: 34,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: Text(
                  "Payment method",
                  style: TextStyle(
                    fontFamily: "sfProText",
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const PaymentMethodWidget(),
              const SizedBox(
                height: 18,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: Text(
                  "Delivery method.",
                  style: TextStyle(
                    fontFamily: "sfProText",
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              const DeliveryOptionsWidget(),
              const SizedBox(
                height: 36,
              ),
              const Row(
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                      fontFamily: "sfProText",
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                    ),
                  ),
                  Expanded(
                    child: SizedBox(),
                  ),
                  Text(
                    "23,000",
                    style: TextStyle(
                      fontFamily: "sfProText",
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 38,
              ),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () => showDialog(
                    context: context,
                    builder: (BuildContext context) => Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const PaymentAlertDialogBox(),
                    ),
                  ),
                  style: FilledButton.styleFrom(
                    backgroundColor: AppPallete.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 25),
                    child: Flexible(
                      child: Text(
                        'Proceed to payment',
                        style: TextStyle(
                          fontSize: 17,
                          color: AppPallete.whiteColor,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'sfProText',
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
