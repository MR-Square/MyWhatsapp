import 'package:get/get.dart';
import 'package:my_whatsapp/res/routes/routes_name.dart';
import 'package:my_whatsapp/view/home/home_view.dart';
import 'package:my_whatsapp/view/splash_view.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RoutesName.splashScreen,
          page: () => SplashView(),
        ),
        GetPage(
          name: RoutesName.homeView,
          page: () => const HomeView(),
        ),
      ];
}
