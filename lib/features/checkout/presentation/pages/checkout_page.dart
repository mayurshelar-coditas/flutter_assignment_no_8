import 'package:assignment8/core/theme/app_pallete.dart';
import 'package:assignment8/features/checkout/presentation/pages/payment_page.dart';
import 'package:assignment8/features/checkout/presentation/widgets/address_details_container.dart';
import 'package:assignment8/features/checkout/presentation/widgets/delivery_options_widget.dart';

import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

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
            vertical: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Delivery",
                style: TextStyle(
                  fontFamily: "sfProText",
                  fontWeight: FontWeight.w600,
                  fontSize: 34,
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Row(
                  children: [
                    Text(
                      textScaler: MediaQuery.textScalerOf(context).scale(17) > 2
                          ? const TextScaler.linear(1)
                          : MediaQuery.textScalerOf(context),
                      "Address details",
                      style: const TextStyle(
                        fontFamily: "sfProText",
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Text(
                          textScaler:
                              MediaQuery.textScalerOf(context).scale(15) > 1.5
                                  ? const TextScaler.linear(1)
                                  : MediaQuery.textScalerOf(context),
                          "change",
                          style: const TextStyle(
                            color: AppPallete.orangeColor,
                            fontFamily: "sfProText",
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const AddressDetailsContainer(),
              const SizedBox(
                height: 42,
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
                height: 20,
              ),
              const DeliveryOptionsWidget(),
              const SizedBox(
                height: 70,
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
                height: 50,
              ),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaymentPage(),
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
