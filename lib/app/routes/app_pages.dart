import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/list_card_page/bindings/list_card_page_binding.dart';
import '../modules/list_card_page/views/list_card_page_view.dart';
import '../modules/list_page/bindings/list_page_binding.dart';
import '../modules/list_page/views/list_page_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.LIST_PAGE,
      page: () => const ListPageView(),
      binding: ListPageBinding(),
    ),
    GetPage(
      name: _Paths.LIST_CARD_PAGE,
      page: () => const ListCardPageView(),
      binding: ListCardPageBinding(),
    ),
  ];
}
