import 'package:flutter/material.dart';
import 'package:instagram_ultimate/pages/1.splash_page.dart';
import 'package:instagram_ultimate/pages/2.sign_in_up_page.dart';
import 'package:instagram_ultimate/pages/3.feed_page.dart';

void main() => runApp(Instagram());

class Instagram extends StatelessWidget {
  const Instagram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        SigningInUp.id: (context) => const SigningInUp(),
        FeedPage.id: (context) => const FeedPage(),
      },
    );
  }
}
