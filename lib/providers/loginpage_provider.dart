import 'package:get/get.dart';

class LoginScreenController extends GetxController {
  RxBool isOtpScreenVisible = false.obs;
  changeScreen() => isOtpScreenVisible.value = !isOtpScreenVisible.value;
}
