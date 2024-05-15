import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:assignment8/core/theme/app_pallete.dart';
import 'package:assignment8/features/cart/presentation/widgets/cart_item_widget.dart';
import 'package:assignment8/core/constants/constants.dart';
import 'package:assignment8/core/di/di_container.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cartItems = locator<Constants>().cartItems;

    return Stack(children: [
      Scaffold(
        backgroundColor: AppPallete.thirdBackground,
        appBar: AppBar(
          leadingWidth: 96,
          backgroundColor: AppPallete.thirdBackground,
          title: const Text(
            'Cart',
            style: TextStyle(
              fontFamily: 'sfProText',
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons/swipe.svg"),
                  const SizedBox(width: 5),
                  const Text(
                    "Swipe on an item to delete",
                    style: TextStyle(
                      fontFamily: 'sfProText',
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: AppPallete.blackColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  itemCount: cartItems.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 14),
                      child: CartItemWidget(index: index),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
          child: SizedBox(
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
                  'Complete order',
                  style: TextStyle(
                    color: AppPallete.whiteColor,
                    fontFamily: 'sfProText',
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
