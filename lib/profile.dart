import 'package:flutter/material.dart';
import "package:get/get.dart";
import 'package:slicing_ui/controllers/profile_controller.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String dropdownProvinsi = 'Jawa Barat';
  String dropdownKota = 'Bandung';
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.pinkAccent),
        child: Column(
          children: [
            const Padding(
                padding: EdgeInsets.all(30),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "Profile",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 36),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "Lengkapi data dirimu sebelum memilih buku!",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                )),
            formProfile(context)
          ],
        ),
      ),
    );
  }

  Expanded formProfile(BuildContext context) {
    ProfileController profileController = Get.put(ProfileController());
    return Expanded(
        child: ListView(
      children: [
        Container(
          height: 800,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50))),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 20,
                            offset: const Offset(0, 10),
                            color: Colors.pink.shade50),
                      ]),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Colors.grey.shade200))),
                    child: TextField(
                      controller: profileController.setFullName,
                      decoration: const InputDecoration(
                          hintText: "Nama Lengkap",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 20,
                            offset: const Offset(0, 10),
                            color: Colors.pink.shade50),
                      ]),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Colors.grey.shade200))),
                    child: TextField(
                      controller: profileController.setEmail,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 20,
                            offset: const Offset(0, 10),
                            color: Colors.pink.shade50),
                      ]),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Colors.grey.shade200))),
                    child: TextField(
                      controller: profileController.setPassword,
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: const InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 20,
                                      offset: const Offset(0, 10),
                                      color: Colors.pink.shade50),
                                ]),
                            child: DropdownButton<String>(
                              borderRadius: BorderRadius.circular(10),
                              value: dropdownProvinsi,
                              items: <String>[
                                'Jawa Barat',
                                'Jawa Tengah',
                                'Jawa Timur',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                );
                              }).toList(),
                              // Step 5.
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownProvinsi = newValue!;
                                });
                              },
                            )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 20,
                                    offset: const Offset(0, 10),
                                    color: Colors.pink.shade50),
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              DropdownButton<String>(
                                borderRadius: BorderRadius.circular(10),
                                value: dropdownKota,
                                items: <String>[
                                  'Bandung',
                                  'Jakarta',
                                  'Tangerang',
                                  'Semarang',
                                  'Surabaya'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: const TextStyle(fontSize: 18),
                                    ),
                                  );
                                }).toList(),
                                // Step 5.
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownKota = newValue!;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      )
                    ]),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 20,
                            offset: const Offset(0, 10),
                            color: Colors.pink.shade50),
                      ]),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Colors.grey.shade200))),
                    child: TextField(
                      controller: profileController.setNumberPhone,
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                          hintText: "No. Telp",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Checkbox(
                    checkColor: Colors.white,
                    activeColor: Colors.pinkAccent,
                    value: agree,
                    onChanged: (value) {
                      setState(() {
                        agree = value ?? false;
                      });
                    },
                  ),
                  const Text(
                    'I have read and accept terms and conditions',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ]),
                const SizedBox(height: 10),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(200, 45),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Colors.pinkAccent,
                    ),
                    onPressed: profileController.setFullName.text.isNotEmpty &&
                            profileController.setEmail.text.isNotEmpty &&
                            profileController.setPassword.text.isNotEmpty &&
                            profileController.setNumberPhone.text.isNotEmpty &&
                            agree
                        ? () {
                            profileController.setProfile(
                                profileController.setFullName.text,
                                profileController.setEmail.text,
                                profileController.setPassword.text,
                                profileController.setNumberPhone.text);
                            Get.snackbar("Berhasil Melengkapi Data Diri!",
                                "Anda dapat memilih buku favorit sesuai kategori yang Anda pilih");
                            Get.toNamed('/homepage',
                                arguments: profileController.setFullName.text);
                          }
                        : null,
                    child: const Text('Simpan Data Diri'))
              ],
            ),
          ),
        )
      ],
    ));
  }
}
