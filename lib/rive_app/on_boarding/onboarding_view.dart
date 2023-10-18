import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  //
  late RiveAnimationController _btnController;

  @override
  void initState() {
    super.initState();
    _btnController = OneShotAnimation('active', autoplay: false);
  }

  @override
  void dispose() {
    _btnController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
            child: Center(
              child: OverflowBox(
                maxWidth: double.infinity,
                child: Transform.translate(
                  offset: const Offset(200, 100),
                  child: Image.asset(
                    'assets/samples/ui/rive_app/images/backgrounds/spline.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
            child: const RiveAnimation.asset(
                'assets/samples/ui/rive_app/rive/shapes.riv'),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 80, 40, 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 260,
                    padding: const EdgeInsets.only(bottom: 16),
                    child: const Text(
                      'Learn design & code',
                      style: TextStyle(fontSize: 60, fontFamily: 'Poppins'),
                    ),
                  ),
                  Text(
                    'Don\'t skip design. Learn design and code, by building real apps with React and Swift. Complete courses about the best tools.',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontFamily: 'Inter',
                      fontSize: 17,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () => _btnController.isActive = true,
                    child: Container(
                      width: 236,
                      height: 64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 10,
                            offset: const Offset(0, 10),
                          )
                        ],
                      ),
                      child: Stack(
                        children: [
                          RiveAnimation.asset(
                            'assets/samples/ui/rive_app/rive/button.riv',
                            fit: BoxFit.cover,
                            controllers: [_btnController],
                          ),
                          Center(
                            child: Transform.translate(
                              offset: const Offset(4, 4),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.arrow_forward_rounded),
                                  Text(
                                    'Start the course',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Purchase includes access to 30+ courses, 240+ permium tutorials, 120+ hours of videos, source files and certificates',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontFamily: 'Inter',
                      fontSize: 13,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
