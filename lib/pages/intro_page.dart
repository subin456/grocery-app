import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(80.0),
            child: Image.asset("lib/images/avocado.png"),
          ),
          Text(
            "We deliver groceries at your doorstep",
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSerif(
                fontSize: 36, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          Text(
            "Fresh items every day",
            style: TextStyle(fontSize: 20, color: Colors.grey[600]),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            ),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(24),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
