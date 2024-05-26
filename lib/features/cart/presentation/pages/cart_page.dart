import 'package:assignment8/features/checkout/presentation/pages/checkout_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:assignment8/core/theme/app_pallete.dart';
import 'package:assignment8/features/cart/presentation/widgets/cart_item_widget.dart';
import 'package:assignment8/core/constants/constants.dart';
import 'package:assignment8/core/di/di_container.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
                      child: Slidable(
                        endActionPane: ActionPane(
                          motion: const BehindMotion(),
                          children: [
                            Row(
                              children: [
                                const SizedBox(
                                  width: 50,
                                ),
                                IconButton.filled(
                                  onPressed: () {},
                                  style: IconButton.styleFrom(
                                    backgroundColor: AppPallete.redColor,
                                  ),
                                  icon: SvgPicture.asset(
                                    "assets/icons/heart.svg",
                                    color: AppPallete.whiteColor,
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                IconButton.filled(
                                  onPressed: () {
                                    setState(() {
                                      locator<Constants>()
                                          .cartItems
                                          .removeAt(index);
                                    });
                                  },
                                  style: IconButton.styleFrom(
                                    backgroundColor: AppPallete.redColor,
                                  ),
                                  icon: const Icon(Icons.delete),
                                ),
                              ],
                            ),
                          ],
                        ),
                        child: CartItemWidget(index: index),
                      ),
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
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CheckoutPage(),
                ),
              ),
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
