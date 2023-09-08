import 'package:flutter/material.dart';
import 'package:slicing_ui/screens/splash_screen.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String fullName = '';
  String email = '';
  String password = '';
  String numberPhone = '';
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
                      onChanged: (String? newValue) => setState(() {
                        fullName = newValue!;
                      }),
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
                      onChanged: (String? newValue) => setState(() {
                        email = newValue!;
                      }),
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
                      onChanged: (String? newValue) => setState(() {
                        password = newValue!;
                      }),
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
                      onChanged: (String? newValue) => setState(() {
                        numberPhone = newValue!;
                      }),
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
                    onPressed: fullName.isNotEmpty &&
                            email.isNotEmpty &&
                            password.isNotEmpty &&
                            numberPhone.isNotEmpty &&
                            agree
                        ? () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const SplashScreen(),
                              ),
                            );
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
