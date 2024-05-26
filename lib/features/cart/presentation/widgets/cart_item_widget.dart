import 'package:assignment8/features/cart/data/models/cart_item_model.dart';
import 'package:flutter/material.dart';
import 'package:assignment8/core/constants/constants.dart';
import 'package:assignment8/core/di/di_container.dart';
import 'package:assignment8/core/theme/app_pallete.dart';

class CartItemWidget extends StatefulWidget {
  const CartItemWidget({super.key, required this.index});

  final int index;

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  late final CartItemModel foodItem =
      locator<Constants>().cartItems[widget.index];

  bool delete = false;
  int itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 18, top: 16, bottom: 16),
      decoration: BoxDecoration(
        color: AppPallete.whiteColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color(0x00000000),
            offset: Offset(0, 10),
            blurRadius: 40,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.075,
                width: MediaQuery.of(context).size.height * 0.075,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF000000).withOpacity(0.07),
                      offset: const Offset(0, 40),
                      blurRadius: 40,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Image.asset(
                  foodItem.image,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      foodItem.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontFamily: 'sfProRoundedRegular',
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      foodItem.rating,
                      style: const TextStyle(
                        color: AppPallete.primaryColor,
                        fontFamily: 'sfProRoundedRegular',
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 24,
            child: Container(
              decoration: BoxDecoration(
                color: AppPallete.primaryColor,
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () => setState(() {
                      itemCount == 0 ? itemCount = 0 : itemCount--;
                    }),
                    child: const Text(
                      "-",
                      style: TextStyle(
                        color: AppPallete.whiteColor,
                        fontFamily: "sfProRounded",
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "$itemCount",
                    style: const TextStyle(
                      color: AppPallete.whiteColor,
                      fontFamily: "sfProRounded",
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                    onTap: () => setState(() {
                      itemCount++;
                    }),
                    child: const Text(
                      "+",
                      style: TextStyle(
                        color: AppPallete.whiteColor,
                        fontFamily: "sfProRounded",
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
