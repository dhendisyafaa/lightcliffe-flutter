import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  TextEditingController setFullName = TextEditingController();
  TextEditingController setEmail = TextEditingController();
  TextEditingController setPassword = TextEditingController();
  TextEditingController setNumberPhone = TextEditingController();
  TextEditingController setFavoriteBook = TextEditingController();

  RxString fullNameUser = RxString("");
  RxString emailUser = RxString("");
  RxString passwordUser = RxString("");
  RxString numberPhoneUser = RxString("");
  RxList dataUser = RxList();
  RxBool isOpen = RxBool(true);
  RxList<String> listFavoriteBook = RxList<String>([]);

  setIsOpen(value) {
    isOpen(value);
    print(value);
  }

  void setProfile(
      String fullname, String email, String password, String numberPhone) {
    var dataProfile = {
      fullNameUser.value = fullname,
      emailUser.value = email,
      passwordUser.value = password,
      numberPhoneUser.value = numberPhone,
    };

    dataUser.add(dataProfile);

    print(dataUser);
    print(dataProfile);
  }

  void favoriteBook(book) {
    listFavoriteBook.add(book);
  }
}
