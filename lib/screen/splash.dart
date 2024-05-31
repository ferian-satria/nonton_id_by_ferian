import 'package:flutter/material.dart';
import 'package:nonton_id_by_ferian/screen/login.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
    Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                const Login()),
                );
              });
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/back_splash.png',
              fit: BoxFit.cover,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFF1C1A29),
                    const Color(0xFF1C1A29).withOpacity(0.53),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Positioned(
              top: 0,
              bottom: 300,
              left: 0,
              right: 0,
              child: Image.asset('assets/nonton_id.png'),
            ),
          ],
        ),
      ),
    );
  }
}
