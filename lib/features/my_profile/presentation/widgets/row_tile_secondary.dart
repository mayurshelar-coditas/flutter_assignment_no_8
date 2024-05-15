import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RowTileSecondary extends StatelessWidget {
  const RowTileSecondary(
      {super.key,
      required this.title,
      required this.icon,
      required this.containerColor});

  final String title, icon;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 51),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            decoration: BoxDecoration(
              color: containerColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(
              icon,
            ),
          ),
          const SizedBox(
            width: 11,
          ),
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'sfProText',
              fontSize: 17,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
