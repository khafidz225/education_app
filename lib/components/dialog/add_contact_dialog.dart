import 'package:contacts_service/contacts_service.dart';
import 'package:education_app/app/modules/contact_page/controllers/contact_page_controller.dart';
import 'package:education_app/controller/global_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class AddContactDialog extends StatelessWidget {
  const AddContactDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final contactModel = Get.put(ContactPageController());
    final globalModel = Get.put(GlobalController());
    return Container(
      width: Get.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Form(
        key: contactModel.globalKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const Text(
                  'Add Contact',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: contactModel.displayNameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Display Name',
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null) {
                      return 'Silahkan isi';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: contactModel.phoneController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Phone',
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null) {
                      return 'Silahkan isi';
                    } else {
                      return null;
                    }
                  },
                ),
              ],
            ),
            SizedBox(
                width: Get.width,
                child: ElevatedButton(
                    onPressed: () {
                      globalModel.addContacts(
                          contact: Contact(
                        displayName: contactModel.displayNameController.text,
                        phones: [
                          Item(value: contactModel.phoneController.text)
                        ],
                      ));
                    },
                    child: const Text('Tambahkan')))
          ],
        ),
      ),
    );
  }
}
