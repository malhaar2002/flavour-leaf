import 'package:get/get.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:ticci/controllers/cart_controller.dart';

void startPayment() {
  Razorpay razorpay = Razorpay();
  CartController controller = Get.find();
  razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
  razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
  razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handlerExternalWallet);
  openCheckout(razorpay, controller.total.toString());
}

void _handlePaymentSuccess() {
  print("Payment successful");
}

void _handlePaymentError() {
  print("Payment error");
}

void _handlerExternalWallet() {
  print("External wallet");
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
    print(e.toString());
  }
}
