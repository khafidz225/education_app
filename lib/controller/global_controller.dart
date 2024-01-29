import 'package:contacts_service/contacts_service.dart';
import 'package:education_app/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class GlobalController extends GetxController {
  List<Contact> valueContactPulsa = [];

  Future<void> requestContactPermission() async {
    var status = await Permission.contacts.status;
    if (status.isGranted) {
      print('di izinkan 1');
      getContacts(isSearch: false);
      Get.toNamed(Routes.CONTACT_PAGE);
    } else {
      print('belum di izinkan');
      var result = await Permission.contacts.request();
      if (result.isGranted) {
        print('di izinkan 2');
        getContacts(isSearch: false);
        Get.toNamed(Routes.CONTACT_PAGE);
      }
    }
  }

  Future<void> addContacts({required Contact contact}) async {
    try {
      await ContactsService.addContact(contact);
      await getContacts(isSearch: false);
      Get.back();
      Get.back();
      Get.snackbar('Education_App', 'Contact telah di tambahkan',
          snackStyle: SnackStyle.FLOATING);
    } catch (e) {
      print(e);
    } finally {
      update();
    }
  }

  Future<void> getContacts({required bool isSearch, String? query}) async {
    if (!isSearch || query == '') {
      try {
        valueContactPulsa = await ContactsService.getContacts();
      } finally {
        update();
      }
      print(
          'valueContactPulsa ${valueContactPulsa.map((element) => element.displayName)}');
      print(
          'await ContactsService.getContacts() ${await ContactsService.getContacts()}');
    } else {
      try {
        valueContactPulsa = await ContactsService.getContacts(query: query);
        print(
            'valueContactPulsa ${valueContactPulsa.map((element) => element.displayName)}');
      } finally {
        update();
      }
    }
    update();
  }
}
