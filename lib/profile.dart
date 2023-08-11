import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.pinkAccent),
        body: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 48, // Image radius
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
              Container(
                child: SizedBox(
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Nama',
                      ),
                    )),
              ),
              Container(
                child: SizedBox(
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                      ),
                    )),
              ),
              Row(
                children: [
                  Container(
                    child: SizedBox(
                        width: 170,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email',
                          ),
                        )),
                  ),
                  Container(
                    child: SizedBox(
                        width: 170,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email',
                          ),
                        )),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
