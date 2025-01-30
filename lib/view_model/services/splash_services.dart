import 'package:get/get.dart';
import 'package:my_whatsapp/res/routes/routes_name.dart';

class SplashServices {
  void timer() {
    Future.delayed(
      const Duration(seconds: 3),
      () => Get.offAllNamed(RoutesName.homeView),
    );
  }
}
