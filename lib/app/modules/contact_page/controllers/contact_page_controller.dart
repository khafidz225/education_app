import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactPageController extends GetxController {
  final globalKey = GlobalKey<FormState>();
  TextEditingController displayNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
}
