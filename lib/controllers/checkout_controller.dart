import 'package:get/get.dart';

class CheckoutController extends GetxController {
  final _deliveryLocation = ''.obs;
  final _additionalInfo = ''.obs;

  void addDeliveryLocation(String location) => _deliveryLocation.value = location;
  void addAdditionalInfo(String info) => _additionalInfo.value = info;

  get deliveryLocation => _deliveryLocation;
  get additionalInfo => _additionalInfo;
}