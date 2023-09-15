import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slicing_ui/controllers/profile_controller.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController profileController = Get.find();
    var userName = Get.arguments;
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Obx(() => Switch(
                value: profileController.isOpen.value,
                activeColor: Colors.pinkAccent,
                onChanged: (value) => {profileController.setIsOpen(value)})),
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                    backgroundColor: Colors.white,
                    Container(
                      // decoration: BoxDecoration( ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            title: Text(
                                'Full Name: ${profileController.fullNameUser.value}'),
                          ),
                          ListTile(
                            title: Text(
                                'Email: ${profileController.emailUser.value}'),
                          ),
                          ListTile(
                            title: Text(
                                'Password: ${profileController.passwordUser.value}'),
                          ),
                          ListTile(
                            title: Text(
                                'Number Phone: ${profileController.numberPhoneUser.value}'),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.pinkAccent),
                              onPressed: () {
                                Get.toNamed('/');
                              },
                              child: Text("Kembali ke awal"))
                        ],
                      ),
                    ));
              },
              child: Icon(Icons.account_circle),
              style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(1),
                  backgroundColor: Colors.pinkAccent),
            )
          ],
        ),
        Container(
          child: Column(
            children: [
              Text(
                "Selamat Siang, ${userName.toString()}!",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("Tambahkan Buku kesukaanmu: "),
              TextField(
                controller: profileController.setFavoriteBook,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pinkAccent),
                  onPressed: () {
                    profileController
                        .favoriteBook(profileController.setFavoriteBook.text);
                  },
                  child: Text("Add")),
              SizedBox(
                height: 20,
              ),
              Obx(() => ListView.builder(
                    shrinkWrap: true,
                    itemCount: profileController.listFavoriteBook.length,
                    itemBuilder: (context, index) {
                      return Text(
                          profileController.listFavoriteBook.value[index]);
                    },
                  ))
            ],
          ),
        )
      ],
    )));
  }
}
