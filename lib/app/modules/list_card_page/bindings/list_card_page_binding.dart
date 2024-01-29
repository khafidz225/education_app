import 'package:get/get.dart';

import '../controllers/list_card_page_controller.dart';

class ListCardPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListCardPageController>(
      () => ListCardPageController(),
    );
  }
}
