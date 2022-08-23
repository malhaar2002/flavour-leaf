import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:ticci/controllers/cart_controller.dart';
import 'package:ticci/screens/order_status.dart';

void startPayment() {
  Razorpay razorpay = Razorpay();
  CartController controller = Get.find();
  razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
  razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
  razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handlerExternalWallet);
  openCheckout(razorpay, controller.total.toString());
}

void _handlePaymentSuccess(PaymentSuccessResponse response) {
  Get.to(() => const OrderStatus(status: 'success'));
}

void _handlePaymentError(PaymentFailureResponse response) {
  Get.to(() => const OrderStatus(status: 'failure'));
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
    }
  };

  try {
    razorpay.open(options);
  } catch (e) {
    if (kDebugMode) {
      print(e.toString());
    }
  }
}
