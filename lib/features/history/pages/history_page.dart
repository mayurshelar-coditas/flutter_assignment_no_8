import 'package:assignment8/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallete.thirdBackground,
      appBar: AppBar(
        leadingWidth: 96,
        backgroundColor: AppPallete.thirdBackground,
        title: const Text(
          'History',
          style: TextStyle(
            fontFamily: 'sfProText',
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 50,
        ),
        child: Center(
          child: Column(
            children: [
              const Expanded(
                flex: 37,
                child: SizedBox(),
              ),
              SvgPicture.asset('assets/icons/calender.svg'),
              const Expanded(
                flex: 5,
                child: SizedBox(),
              ),
              const Text(
                'No history yet',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'sfProText',
                  color: AppPallete.blackColor,
                ),
              ),
              const Expanded(
                flex: 3,
                child: SizedBox(),
              ),
              Text(
                textAlign: TextAlign.center,
                'Hit the orange button down\nbelow to Create an order',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'sfProText',
                  color: AppPallete.blackColor.withOpacity(0.57),
                ),
              ),
              const Expanded(
                flex: 56,
                child: SizedBox(),
              ),
              SizedBox(
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
                      'Start ordering',
                      style: TextStyle(
                        fontFamily: 'sfProText',
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
