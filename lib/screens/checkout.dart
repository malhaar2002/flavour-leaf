import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:ticci/controllers/checkout_controller.dart';
import 'package:ticci/services/rzp.dart';
import 'package:ticci/widgets/dropdown.dart';
import 'package:ticci/widgets/rounded_button.dart';

class Checkout extends StatelessWidget {
  Checkout({super.key});
  static const id = 'checkout';
  final checkoutcontroller = Get.put(CheckoutController());
  String _additionalInfo = '';

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
        child: CustomScrollView(slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
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
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Additional Information',
                  ),
                  onChanged: (value) {
                    _additionalInfo = value;
                  },
                ),
                Image.asset(
                  'assets/images/on_its_way.png',
                  height: 300,
                ),
                RoundedButton(
                  text: 'Confirm Order',
                  onPressed: () {
                    checkoutcontroller.addAdditionalInfo(_additionalInfo);
                    startPayment();
                  },
                  backgroundColour: const Color(0xFFFA4A0C),
                  colour: const Color(0xFFFFFFFF),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
