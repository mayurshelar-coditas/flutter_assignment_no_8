import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget(
      {super.key, required this.screenWidth, required this.screenHeight});

  final double screenWidth, screenHeight;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            TabBar(
              indicator: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black, // Indicator color
                    width: screenWidth * 0.0053333, // Indicator height
                  ),
                ),
              ),
              indicatorColor: Colors.black,
              tabs: [
                Tab(
                  child: Text(
                    'Description',
                    style: GoogleFonts.workSans(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: screenWidth * 0.0373333,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Shopping Info',
                    style: GoogleFonts.workSans(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: screenWidth * 0.0373333,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Payment Options',
                    style: GoogleFonts.workSans(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: screenWidth * 0.0373333,
                    ),
                  ),
                ),
              ],
              // isScrollable: true,
            ),
            SizedBox(
              height: screenHeight * 0.4170792,
              child: TabBarView(
                children: [
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: screenHeight * 0.0304059,
                      ),
                      Text(
                        'As in handbags, the double ring and bar design defines the wallet shape, highlighting the front flap closure which is tucked inside the hardware. Completed with an organizational interior, the black leather wallet features a detachable chain.',
                        style: GoogleFonts.workSans(
                          color: const Color(0xFF5B5B5B),
                          fontWeight: FontWeight.w400,
                          fontSize: screenWidth * 0.0373333,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.0233168317,
                      ),
                      Text(
                        'Material & Care',
                        style: GoogleFonts.workSans(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: screenWidth * 0.0373333,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.006188,
                      ),
                      Text(
                        'All products are made with carefully selected materials. Please handle with care for longer product life.\n- Protect from irect light, heat and rain. Should  \tbecome wet, dry it with a soft cloth \n- Store in the provided flannel bag or box\n- Clean with a soft, dry cloth',
                        style: GoogleFonts.workSans(
                          color: const Color(0xFF5B5B5B),
                          fontWeight: FontWeight.w400,
                          fontSize: screenWidth * 0.0373333,
                        ),
                      )
                    ],
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: screenHeight * 0.0304059,
                      ),
                      Text(
                        'Pre-order, Made to Order and DIY items will ship on the estimated date noted on the product description page. These items will ship through Premium Express once they become available.',
                        style: GoogleFonts.workSans(
                          color: const Color(0xFF5B5B5B),
                          fontWeight: FontWeight.w400,
                          fontSize: screenWidth * 0.0373333,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.0233168317,
                      ),
                      Text(
                        'Return Policy',
                        style: GoogleFonts.workSans(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: screenWidth * 0.0373333,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.006188,
                      ),
                      // Text('', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),)
                      Text(
                        'Returns may be made by mail or in store. The return window for online purchases is 30 days (10 days in the case of beauty items) from the date of delivery. You may return products by mail using the complimentary  return label included with your order, and following the return instructions provided in your digital invoice.',
                        style: GoogleFonts.workSans(
                          color: const Color(0xFF5B5B5B),
                          fontWeight: FontWeight.w400,
                          fontSize: screenWidth * 0.0373333,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: screenHeight * 0.0304059,
                      ),
                      Text(
                        'We accepts the following forms of payment for online purchases:',
                        style: GoogleFonts.workSans(
                          color: const Color(0xFF5B5B5B),
                          fontWeight: FontWeight.w400,
                          fontSize: screenWidth * 0.0373333,
                        ),
                      ),
                      SizedBox(height: 20),
                      // Text('Material & Care', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                      Text(
                        'PayPal may not be used to purchase Made to Order Décor or DIY items.',
                        style: GoogleFonts.workSans(
                          color: const Color(0xFF5B5B5B),
                          fontWeight: FontWeight.w400,
                          fontSize: screenWidth * 0.0373333,
                        ),
                      ),
                      SizedBox(height: 20),

                      Text(
                        'The full transaction value will be charged to your credit card after we have verified your card details, received credit authorisation,  availability and prepared your order for shipping. For Made To Order, DIY, personalised and selected Décor products, payment will be taken at the time the order is placed.',
                        style: GoogleFonts.workSans(
                          color: const Color(0xFF5B5B5B),
                          fontWeight: FontWeight.w400,
                          fontSize: screenWidth * 0.0373333,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
