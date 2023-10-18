import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrive/rive_app/theme.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Stack(
            children: [
              Container(
                constraints: const BoxConstraints(maxWidth: 600),
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [Colors.white.withOpacity(0.8), Colors.white],
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(29),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: CupertinoColors.secondarySystemBackground,
                      // this, kinda give the background iOS stylee "Fronsted Glass" effect,
                      // it works for the particular color, might not for others
                      backgroundBlendMode: BlendMode.luminosity,
                      boxShadow: [
                        BoxShadow(
                          color: RiveAppTheme.shadow.withOpacity(0.3),
                          offset: const Offset(0, 3),
                          blurRadius: 5,
                        ),
                        BoxShadow(
                          color: RiveAppTheme.shadow.withOpacity(0.3),
                          offset: const Offset(0, 30),
                          blurRadius: 30,
                        ),
                      ]),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Sign In',
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 34),
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        'Access to 240+ hours of content. Learn design & code, by building real app',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 24),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Email',
                          style: TextStyle(
                            color: CupertinoColors.secondaryLabel,
                            fontFamily: 'Inter',
                            fontSize: 15,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextField(
                        decoration: authInputStyle('icon_email'),
                      ),
                      const SizedBox(height: 24),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Password',
                          style: TextStyle(
                            color: CupertinoColors.secondaryLabel,
                            fontFamily: 'Inter',
                            fontSize: 15,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextField(
                        obscureText: true,
                        decoration: authInputStyle('icon_lock'),
                      ),
                      const SizedBox(height: 24),
                      Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: const Color(0xfff77d8e).withOpacity(0.5),
                            blurRadius: 20,
                            offset: const Offset(0, 10),
                          )
                        ]),
                        child: CupertinoButton(
                          color: const Color(0xfff77d8e),
                          padding: const EdgeInsets.all(20),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.arrow_forward_rounded),
                              SizedBox(width: 4),
                              Text(
                                'Sign In',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Inter',
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 24),
                        child: Row(
                          children: [
                            const Expanded(child: Divider()),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Text(
                                'OR',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.3),
                                  fontFamily: 'Inter',
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            const Expanded(child: Divider()),
                          ],
                        ),
                      ),
                      const Text(
                        'Sign up with Email, Apple or Google',
                        style: TextStyle(
                          color: CupertinoColors.secondaryLabel,
                          fontFamily: 'Inter',
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                                'assets/samples/ui/rive_app/images/logo_email.png'),
                            Image.asset(
                                'assets/samples/ui/rive_app/images/logo_apple.png'),
                            Image.asset(
                                'assets/samples/ui/rive_app/images/logo_google.png'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Align(
                  alignment: Alignment.center,
                  child: CupertinoButton(
                    borderRadius: BorderRadius.circular(36 / 2),
                    padding: const EdgeInsets.all(0),
                    minSize: 36,
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: RiveAppTheme.shadow.withOpacity(0.3),
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          )
                        ],
                      ),
                      child: const Icon(Icons.close, color: Colors.black),
                    ),
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}

InputDecoration authInputStyle(String iconName) {
  return InputDecoration(
    filled: true,
    fillColor: Colors.white,
    contentPadding: const EdgeInsets.all(15),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
    ),
    prefixIcon: Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Image.asset('assets/samples/ui/rive_app/images/$iconName.png'),
    ),
  );
}
