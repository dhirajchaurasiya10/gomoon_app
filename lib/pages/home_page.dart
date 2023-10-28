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
            height: _deviceheight,
            width: _devicewidth,
            padding: EdgeInsets.symmetric(
              horizontal: _devicewidth * 0.05,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _pageTitle(),
                _destionationDropDownWidget(),
                _travellersInformationWidget(),
              ],
            )),
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

  Widget _astroImageWidget() {
    return Container(
      height: _deviceheight * 0.5,
      width: _devicewidth * 0.65,
      decoration: const BoxDecoration(
        // color: Colors.red,
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/astro_moon.png")),
      ),
    );
  }

//jastai devices anusar farak farak notches hunxa ni kasaiko
//camera bichma kasaiko side ma etc jsle hamro display huni
//content lai affect garna sakxa so tyo issue lai eradicate garna lai chai safearea le kaam garxa

  Widget _destionationDropDownWidget() {
    return CustomDropDownButtonClass(values: [
      'James Webb Station',
      'Preneure Station',
    ], width: _devicewidth * 0.45);
  }

  Widget _travellersInformationWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropDownButtonClass(
          values: const ['1', '2', '3', '4'],
          width: _devicewidth * 0.45,
        ),
        CustomDropDownButtonClass(
          values: const ['Economy', 'Business', 'First', 'Private'],
          width: _devicewidth * 0.40,
        ),
      ],
    );
  }
}
