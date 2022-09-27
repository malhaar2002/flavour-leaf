import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:ticci/controllers/cart_controller.dart';
import 'package:ticci/screens/order_status.dart';
import 'package:ticci/screens/orders.dart';
import 'package:ticci/services/add_order.dart';
import 'package:ticci/widgets/zoomdrawer.dart';

void startPayment() {
  Razorpay razorpay = Razorpay();
  CartController controller = Get.find();
  razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
  razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
  razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handlerExternalWallet);
  openCheckout(razorpay, controller.total.toString());
}

void addProducts() {
  CartController cartController = Get.find();
  final Map<String, int> productsMap = {};
  cartController.products.forEach((key, value) {
    productsMap[key.name] = cartController.products[value];
    cartController.removeProduct(key);
  });
  addOrder(productsMap);
}

void _handlePaymentSuccess(PaymentSuccessResponse response) {
  addProducts();
  // Get.to(() => OrderStatus(status: 'success', productsMap: productsMap));
  Get.to(() => ZoomDrawerMaker(mainScreen: Orders()));
}

void _handlePaymentError(PaymentFailureResponse response) {
  CartController cartController = Get.find();
  final Map<String, int> productsMap = {};
  cartController.products.forEach((key, value) {
    productsMap[key.name] = cartController.products[value];
    cartController.removeProduct(key);
  });
  addOrder(productsMap);
  // Get.to(() => OrderStatus(status: 'failure', productsMap: productsMap));
  Get.to(() => ZoomDrawerMaker(mainScreen: Orders()));
}

void _handlerExternalWallet(ExternalWalletResponse response) {
  Get.snackbar(
    'Payment Status',
    'External Wallet',
  );
}

void openCheckout(Razorpay razorpay, String amount) {
  var options = {
    'key': 'rzp_test_rhbvYAIZPNImur',
    'amount': (double.parse(amount) * 100).toString(),
    'name': 'Sample Payment',
    'description': 'Test payment',
    'prefill': {'contact': '8888888888', 'email': 'aroramalhaar@gmail.com'},
    'external': {
      'wallets': ['paytm']
    },
    "method": {
      "netbanking": false,
      "card": false,
      "upi": true,
      "wallet": false,
      "emi": false,
      "paylater": false,
    },
    'theme': {'color': '#FA4A0C'},
  };

  try {
    razorpay.open(options);
  } catch (e) {
    if (kDebugMode) {
      print(e.toString());
    }
  }
}
