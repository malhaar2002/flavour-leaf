import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:ticci/services/rzp.dart';
import 'package:ticci/widgets/dropdown.dart';
import 'package:ticci/widgets/rounded_button.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});
  static const id = 'checkout';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => ZoomDrawer.of(context)!.toggle(),
          icon: const Icon(Icons.menu),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Checkout',
              style: TextStyle(
                fontFamily: 'SFProText',
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            const DeliveryDropdown(),
            const TextField(
              decoration: InputDecoration(labelText: 'Additional Information'),
            ),
            Image.asset(
              'assets/images/on_its_way.png',
              height: 300,
            ),
            RoundedButton(
              text: 'Confirm Order',
              onPressed: () => startPayment(),
              backgroundColour: const Color(0xFFFA4A0C),
              colour: const Color(0xFFFFFFFF),
            ),
          ],
        ),
      ),
    );
  }
}
