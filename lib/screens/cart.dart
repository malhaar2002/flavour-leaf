import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:ticci/controllers/cart_controller.dart';
import 'package:ticci/screens/checkout.dart';
import 'package:ticci/widgets/cartcard.dart';
import 'package:ticci/widgets/rounded_button.dart';

class Cart extends StatelessWidget {
  Cart({super.key});
  static const id = 'cart';
  final CartController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => ZoomDrawer.of(context)!.toggle(),
          icon: const Icon(Icons.menu),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Obx(
        () => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          child: controller.products.length != 0
              ? SingleChildScrollView(
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text(
                            'Cart',
                            style: TextStyle(
                              fontFamily: 'SFProText',
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 25),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.swipe,
                                size: 13,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'swipe right on an item to delete',
                                style: TextStyle(
                                  fontFamily: 'SFProText',
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 25),
                          ListView.builder(
                            itemCount: controller.products.length,
                            shrinkWrap: true,
                            physics: const ScrollPhysics(),
                            itemBuilder: (context, index) => CartCard(
                              controller: controller,
                              product: controller.products.keys.toList()[index],
                              quantity:
                                  controller.products.values.toList()[index],
                            ),
                          ),
                          const SizedBox(height: 25),
                          RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(
                                  text: 'Total: ',
                                  style: TextStyle(
                                    fontFamily: 'SFProText',
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: '₹${controller.total.toString()}',
                                  style: const TextStyle(
                                    fontFamily: 'SFProText',
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 25),
                          RoundedButton(
                            text: 'Checkout',
                            onPressed: () {
                              // Get.to(() => ZoomDrawerMaker(mainScreen: Checkout()));
                              Get.to(() => Checkout());
                            },
                            backgroundColour: const Color(0xFFFA4A0C),
                            colour: const Color(0xFFFFFFFF),
                          ),
                        ],
                      ),
                      const SizedBox(width: double.infinity),
                    ],
                  )),
                )
              : Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.shopping_cart_outlined,
                        size: 100,
                        color: Color(0xFFC7C7C7),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Your Cart is Empty',
                        style: TextStyle(
                          fontFamily: 'SF-Pro-Rounded',
                          fontSize: 28,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Please visit the menu to add items',
                        style: TextStyle(
                          fontFamily: 'SFProText',
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
