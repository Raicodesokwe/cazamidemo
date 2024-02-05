import 'package:cazamidemo/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController scaleController;
  late AnimationController btnController;
  late double scale;
  bool isVisible = true;
  @override
  void initState() {
    scaleController = AnimationController(vsync: this);
    btnController = AnimationController(
      vsync: this,
      duration: 250.ms,
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  @override
  void dispose() {
    btnController.dispose();
    scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    scale = 1 - btnController.value;

    void onTapDown(TapDownDetails details) {
      btnController.forward();
    }

    void onTapUp(TapUpDetails details) {
      setState(() {
        isVisible = false;
      });
    }

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                AppColor.purpleColor,
                AppColor.redColor,
              ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: SvgPicture.asset(
                  'assets/images/klogo.svg',
                  height: size.height * 0.2,
                ).animate().fadeIn(duration: 1000.ms).scale(
                      duration: 200.ms,
                      curve: Curves.easeInOut,
                    ),
              ),
              SizedBox(
                height: size.height * 0.13,
              ),
              Text(
                'Joyful shopping',
                style: GoogleFonts.grapeNuts(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ).animate().fadeIn(
                  delay: 300.ms, duration: 500.ms, curve: Curves.easeInOut),
              SizedBox(
                height: size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const Text(
                  'Cazami is a magical world where you can shop with your friends, share what you love and earn money along the way.',
                  style: TextStyle(color: Colors.white),
                ).animate().fadeIn(
                    delay: 400.ms, duration: 500.ms, curve: Curves.easeInOut),
              ),
              SizedBox(
                height: size.height * 0.13,
              ),
              Transform.scale(
                scale: scale,
                child: GestureDetector(
                  onTapUp: onTapUp,
                  onTapDown: onTapDown,
                  child: AnimatedContainer(
                    onEnd: () {
                      scaleController.forward();
                    },
                    duration: 200.ms,
                    curve: Curves.easeInOut,
                    width: isVisible ? size.width * 0.8 : 60,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    child: Center(
                        child: Visibility(
                      visible: isVisible,
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                    )),
                  ),
                )
                    .animate()
                    .slideY(
                      begin: 1,
                      duration: 1000.ms,
                      curve: Curves.easeInOut,
                    )
                    .animate(
                        autoPlay: false,
                        controller: scaleController,
                        onComplete: (val) => context.go(AppRoutes.home))
                    .scale(
                      end: const Offset(30, 30),
                      delay: 100.ms,
                      curve: Curves.easeInOut,
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
