import 'package:cazamidemo/models/image_model.dart';
import 'package:cazamidemo/utils/app_color.dart';
import 'package:cazamidemo/widgets/line_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/count_up_text.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Center(
                      child: const Text(
                    'Your Wallet',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  )
                          .animate()
                          .fadeIn(
                            duration: 1000.ms,
                          )
                          .slideY(
                            delay: 200.ms,
                            begin: 1.3,
                            duration: 300.ms,
                          )),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Rewards',
                        style: GoogleFonts.grapeNuts(
                            color: const Color(0xFF999797),
                            fontWeight: FontWeight.w600,
                            fontSize: 23),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Revenue',
                        style: GoogleFonts.grapeNuts(
                            color: const Color(0xFFD420D7),
                            fontWeight: FontWeight.w600,
                            fontSize: 23),
                      ),
                    ],
                  )
                      .animate()
                      .fadeIn(
                        duration: 1000.ms,
                      )
                      .slideY(
                        delay: 200.ms,
                        begin: 1.3,
                        duration: 300.ms,
                      ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CountupText(
                        begin: 0,
                        end: 1550.36,
                        duration: 1.seconds,
                        style: TextStyle(
                            color: AppColor.purpleColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 38),
                      ),
                      Text(
                        ' €',
                        style: TextStyle(
                            color: AppColor.purpleColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 38),
                      ),
                    ],
                  ),
                  const Text(
                    'Total',
                    style: TextStyle(color: Color(0xFF999797)),
                  )
                      .animate()
                      .fadeIn(
                        duration: 1000.ms,
                      )
                      .slideY(
                        delay: 200.ms,
                        begin: 1.3,
                        duration: 300.ms,
                      ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              AppColor.purpleColor,
                              AppColor.redColor,
                            ])),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.download,
                          color: Colors.white,
                        ),
                        Text(
                          'Pay Out',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  )
                      .animate()
                      .fadeIn(
                        duration: 1000.ms,
                      )
                      .slideY(
                        delay: 200.ms,
                        begin: 1.3,
                        duration: 300.ms,
                      ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Row(
                    children: [
                      Text(
                        'Trend',
                        style: GoogleFonts.grapeNuts(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 23),
                      ),
                      const Spacer(),
                      const Text(
                        '1D',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFD420D7),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        '7D',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF999797)),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        '1M',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF999797)),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        '3M',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF999797)),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        '1Y',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF999797)),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        '∞',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF999797)),
                      ),
                    ],
                  )
                      .animate()
                      .fadeIn(
                        duration: 1000.ms,
                      )
                      .slideY(
                        delay: 200.ms,
                        begin: 1.3,
                        duration: 300.ms,
                      ),
                  const LineChartSample2()
                      .animate()
                      .fadeIn(
                        duration: 1000.ms,
                      )
                      .slideY(
                        delay: 200.ms,
                        begin: 1.3,
                        duration: 300.ms,
                      ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Top Posts',
                      style: GoogleFonts.grapeNuts(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 23),
                    ),
                  )
                      .animate()
                      .fadeIn(
                        duration: 1000.ms,
                      )
                      .slideY(
                        delay: 200.ms,
                        begin: 1.3,
                        duration: 300.ms,
                      ),
                  MasonryGridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          itemCount: imageList.length,
                          itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.all(2),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(7),
                                  child: Stack(
                                    children: [
                                      Image.asset(
                                          'assets/images/${imageList[index].imageLabel}'),
                                      index != 0
                                          ? Positioned(
                                              top: 10,
                                              left: 35,
                                              child: Text(
                                                imageList[index].caption!,
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                  shadows: [
                                                    Shadow(
                                                      offset: Offset(-1, -1),
                                                      color: Colors.black,
                                                    ),
                                                    Shadow(
                                                      offset: Offset(1, -1),
                                                      color: Colors.black,
                                                    ),
                                                    Shadow(
                                                      offset: Offset(1, 1),
                                                      color: Colors.black,
                                                    ),
                                                    Shadow(
                                                      offset: Offset(-1, 1),
                                                      color: Colors.black,
                                                    ),
                                                  ],
                                                ),
                                              ))
                                          : Positioned(
                                              bottom: 20,
                                              left: 30,
                                              child: Text(
                                                imageList[index].caption!,
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                  shadows: [
                                                    Shadow(
                                                      offset: Offset(-1, -1),
                                                      color: Colors.black,
                                                    ),
                                                    Shadow(
                                                      offset: Offset(1, -1),
                                                      color: Colors.black,
                                                    ),
                                                    Shadow(
                                                      offset: Offset(1, 1),
                                                      color: Colors.black,
                                                    ),
                                                    Shadow(
                                                      offset: Offset(-1, 1),
                                                      color: Colors.black,
                                                    ),
                                                  ],
                                                ),
                                              ))
                                    ],
                                  ),
                                ),
                              ))
                      .animate()
                      .fadeIn(
                        duration: 1000.ms,
                      )
                      .slideY(
                        delay: 200.ms,
                        begin: 1.3,
                        duration: 300.ms,
                      ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
