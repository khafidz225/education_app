import 'package:education_app/components/dialog/add_contact_dialog.dart';
import 'package:education_app/components/layout/layout_main.dart';
import 'package:education_app/controller/global_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/contact_page_controller.dart';

class ContactPageView extends GetView<ContactPageController> {
  const ContactPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final model = Get.put(GlobalController());

    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xffff8a02),
          onPressed: () {
            Get.bottomSheet(const AddContactDialog());
          },
          child: const Icon(Icons.add),
        ),
        body: LayoutMain(
            isOrange: true,
            isBack: true,
            title: 'Contact Page',
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: Get.width,
                child: Column(
                  children: [
                    Column(
                      children: model.valueContactPulsa
                          .expand(
                            (dataPulsa) => dataPulsa.phones!.map((dataPhone) {
                              String leadingText =
                                  dataPulsa.displayName?.substring(0, 1) ?? '';
                              return GestureDetector(
                                onTap: () async {},
                                child: Container(
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color(0xFFE0E0E0)))),
                                  child: ListTile(
                                    leading: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(200),
                                            color: const Color(0xfffd511c)),
                                        child: Center(
                                            child: Text(
                                          leadingText,
                                          style: const TextStyle(
                                              color: Colors.white),
                                        ))),
                                    title: Text(dataPulsa.displayName ?? ''),
                                    subtitle: Text(dataPhone.value ?? ''),
                                  ),
                                ),
                              );
                            }
                                // Text(
                                //   formatPhoneNumber(dataPhone.value ?? ''),
                                // ),
                                ),
                          )
                          .toList(),
                    ),
                  ],
                ))));
  }
}
