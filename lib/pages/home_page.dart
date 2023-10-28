import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _pageTitle());
  }
}

Widget _astroImageWidget() {
  return Container(
    decoration: const BoxDecoration(
      // color: Colors.red,
      image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage("assets/images/astro_moon.png")),
    ),
  );
}

Widget _pageTitle() {
  return const Text(
    "#GOMoon",
    style: TextStyle(
      color: Colors.white,
      fontSize: 70,
      fontWeight: FontWeight.w800,
    ),
  );
}
