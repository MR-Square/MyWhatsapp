import 'package:get/get.dart';
import 'package:my_whatsapp/view/home/home_view.dart';

class SplashServices {
  void timer() {
    Future.delayed(
      const Duration(seconds: 3),
      () => Get.to(() => const HomeView()),
    );
  }
}
