import 'package:flutter/material.dart';

import '../widgets/custom_dropdown_button.dart';

class HomePage extends StatelessWidget {
  late double _deviceheight,
      _devicewidth; //2 private variables to store the values of height and width of device
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    _deviceheight = MediaQuery.of(context).size.height;
    _devicewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
            height: _devicewidth,
            width: _deviceheight,
            padding: EdgeInsets.symmetric(
              horizontal: _devicewidth * 0.05,
            ),
            child: _pageTitle()),
      ),
    );
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
  //here the _ means it's a private object for a class
  return const Text(
    "#GOMoon",
    style: TextStyle(
      color: Colors.white,
      fontSize: 70,
      fontWeight: FontWeight.w800,
    ),
  );
}

//jastai devices anusar farak farak notches hunxa ni kasaiko
//camera bichma kasaiko side ma etc jsle hamro display huni
//content lai affect garna sakxa so tyo issue lai eradicate garna lai chai safearea le kaam garxa

Widget _destionationDropDownWidget() {
  return CustomDropDownButtonClass(
    values: const [
      'James Webb Station',
      'Preneure Station',
    ],
    width: _deviceWidth,
  );
}
