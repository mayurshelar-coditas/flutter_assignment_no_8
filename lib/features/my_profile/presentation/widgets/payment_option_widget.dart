// import 'package:assignment8/core/theme/app_pallete.dart';
// import 'package:assignment8/features/my_profile/presentation/widgets/row_tile_secondary.dart';
// import 'package:flutter/material.dart';

// class PaymentOptionsWidget extends StatelessWidget {
//   const PaymentOptionsWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     String selectedPaymentMethod = "None Selected";
//     return Container(
//       // padding: const EdgeInsets.symmetric(vertical: 20),
//       decoration: BoxDecoration(
//         color: AppPallete.whiteColor,
//         borderRadius: BorderRadius.circular(20),
//         boxShadow: const [
//           BoxShadow(
//             color: Color(0x08000000),
//             offset: Offset(0, 10),
//             blurRadius: 40,
//             spreadRadius: 0,
//           ),
//         ],
//       ),
//       child: Column(
//         children: [
//           SizedBox(
//             child: RadioListTile(
//                 secondary: const RowTileSecondary(
//                   title: "Card",
//                   icon: 'assets/icons/card.svg',
//                   containerColor: AppPallete.orangeColor,
//                 ),
//                 value: "Card",
//                 groupValue: selectedPaymentMethod,
//                 onChanged: (selectedValue) {}),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 51, right: 32),
//             child: Container(
//               margin: const EdgeInsets.symmetric(vertical: 15),
//               height: 0.5,
//               width: double.infinity,
//               color: AppPallete.blackColor.withOpacity(0.3),
//             ),
//           ),
//           SizedBox(
//             child: RadioListTile(
//               secondary: const RowTileSecondary(
//                 title: "Bank Account",
//                 icon: 'assets/icons/bank.svg',
//                 containerColor: AppPallete.bankAccountContainerColor,
//               ),
//               value: "Bank Account",
//               groupValue: selectedPaymentMethod,
//               onChanged: (selectedValue) {},
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 51, right: 32),
//             child: Container(
//               margin: const EdgeInsets.symmetric(vertical: 15),
//               height: 0.5,
//               width: double.infinity,
//               color: AppPallete.blackColor.withOpacity(0.3),
//             ),
//           ),
//           SizedBox(
//             child: RadioListTile(
//               secondary: const RowTileSecondary(
//                 title: "Paypal",
//                 icon: 'assets/icons/paypal.svg',
//                 containerColor: AppPallete.paypalContainerColor,
//               ),
//               value: "PayPal",
//               groupValue: selectedPaymentMethod,
//               onChanged: (selectedValue) {},
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:assignment8/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

import 'row_tile_secondary.dart';

class PaymentOptionsWidget extends StatefulWidget {
  const PaymentOptionsWidget({super.key});

  @override
  State<PaymentOptionsWidget> createState() => _PaymentOptionsWidgetState();
}

class _PaymentOptionsWidgetState extends State<PaymentOptionsWidget> {
  String? selectedPaymentMethod;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: AppPallete.whiteColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color(0x08000000),
            offset: Offset(0, 10),
            blurRadius: 40,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(
            height: 100,
            width: double.infinity,
            child: RadioListTile(
              title: const Text('Card'),
              secondary: const RowTileSecondary(
                title: "Card",
                icon: 'assets/icons/card.svg',
                containerColor: AppPallete.orangeColor,
              ),
              value: "Card",
              groupValue: selectedPaymentMethod,
              onChanged: (value) {
                setState(() {
                  selectedPaymentMethod = value;
                });
              },
            ),
          ),
          const Divider(
            height: 0,
            color: Colors.black26,
            thickness: 0.5,
            indent: 16,
            endIndent: 16,
          ),
          SizedBox(
            height: 100,
            child: RadioListTile(
              title: const Text('Bank Account'),
              secondary: const RowTileSecondary(
                title: "Bank Account",
                icon: 'assets/icons/bank.svg',
                containerColor: AppPallete.bankAccountContainerColor,
              ),
              value: "Bank Account",
              groupValue: selectedPaymentMethod,
              onChanged: (value) {
                setState(() {
                  selectedPaymentMethod = value;
                });
              },
            ),
          ),
          const Divider(
            height: 0,
            color: Colors.black26,
            thickness: 0.5,
            indent: 16,
            endIndent: 16,
          ),
          SizedBox(
            height: 200,
            child: RadioListTile(
              
              title: const Text('Paypal'),
              secondary: const RowTileSecondary(
                title: "Paypal",
                icon: 'assets/icons/paypal.svg',
                containerColor: AppPallete.paypalContainerColor,
              ),
              value: "PayPal",
              groupValue: selectedPaymentMethod,
              onChanged: (value) {
                setState(() {
                  selectedPaymentMethod = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
