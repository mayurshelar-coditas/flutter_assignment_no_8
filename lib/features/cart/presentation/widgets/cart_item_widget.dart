import 'package:assignment8/features/cart/data/models/cart_item_model.dart';
import 'package:flutter/material.dart';
import 'package:assignment8/core/constants/constants.dart';
import 'package:assignment8/core/di/di_container.dart';
import 'package:assignment8/core/theme/app_pallete.dart';

import 'package:flutter_svg/svg.dart';

class CartItemWidget extends StatelessWidget {
  CartItemWidget({super.key, required this.index});

  final int index;
  late final CartItemModel foodItem = locator<Constants>().cartItems[index];
  bool delete = false;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(foodItem.id.toString()),
      direction: DismissDirection.endToStart,
      movementDuration: Duration.zero,
      onDismissed: (direction) {
        locator<Constants>().cartItems.removeAt(index);
      },
      confirmDismiss: (DismissDirection d) async {
        await Future.delayed(const Duration(seconds: 1));
        if (delete == true) {
          delete = false;
          return true;
        }
        return false;
      },
      background: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisSize: MainAxisSize.min,
        children: [
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
              delete = true;
            },
            style: IconButton.styleFrom(
              backgroundColor: AppPallete.redColor,
            ),
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
      child: Container(
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
        child: Row(
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

            // Container(
            //   decoration: BoxDecoration(
            //     color: AppPallete.primaryColor,
            //     borderRadius: BorderRadius.circular(30),
            //   ),
            //   padding: const EdgeInsets.symmetric(horizontal: 2),
            //   child: Row(
            //     mainAxisSize: MainAxisSize.min,
            //     children: [
            //       TextButton(
            //         onPressed: () {},
            //         child: const Text(
            //           "-",
            //           style: TextStyle(
            //             color: AppPallete.whiteColor,
            //             fontFamily: "sfProRounded",
            //             fontSize: 15,
            //             fontWeight: FontWeight.w600,
            //           ),
            //         ),
            //       ),
            //       const Text(
            //         "1",
            //         style: TextStyle(
            //           color: AppPallete.whiteColor,
            //           fontFamily: "sfProRounded",
            //           fontSize: 13,
            //           fontWeight: FontWeight.w600,
            //         ),
            //       ),
            //       TextButton(
            //         onPressed: () {},
            //         child: const Text(
            //           "+",
            //           style: TextStyle(
            //             color: AppPallete.whiteColor,
            //             fontFamily: "sfProRounded",
            //             fontSize: 10,
            //             fontWeight: FontWeight.w600,
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
