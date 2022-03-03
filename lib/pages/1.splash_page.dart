import 'package:flutter/material.dart';
import 'dart:async';

import '2.sign_in_up_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String id = 'splash_page';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _openNextPage(){
    Timer(const Duration(seconds: 3), (){Navigator.pushReplacementNamed(context, SigningInUp.id);});
  }

  @override
  void initState() {
    super.initState();
    _openNextPage();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Image(
          image: const AssetImage('assets/images/splashImage.png'),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
