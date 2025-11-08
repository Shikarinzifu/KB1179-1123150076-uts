import 'package:flutter/material.dart';
import 'signin_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const SignInScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Icon(Icons.flutter_dash, size: 120, color: Theme.of(context).colorScheme.primary),
          const SizedBox(height: 20),
          const Text("Mobile UTS App", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          const Text("by Shikarinzifu"),
          const Spacer(),

          // ✅ FOOTER NIM
          const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text(
              "NIM: 1123150076",
              style: TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
