import 'package:flutter/material.dart';
import 'package:slicing_ui/profile.dart';

class BookCategory extends StatelessWidget {
  const BookCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Pilih Kategori'), backgroundColor: Colors.pinkAccent),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(300, 100),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                primary: Colors.white,
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Image.asset("assets/images/book.png",
                        height: 55, width: 55),
                    Text(
                      "Buku Pelajaran",
                      style: TextStyle(color: Colors.black87),
                    )
                  ]),
                  IconButton.filled(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const Profile(),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.grey,
                      )),
                ],
              )),
          SizedBox(
            height: 5,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(300, 100),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                primary: Colors.white,
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Image.asset("assets/images/book.png",
                        height: 55, width: 55),
                    Text(
                      "Buku Pelajaran",
                      style: TextStyle(color: Colors.black87),
                    )
                  ]),
                  IconButton.filled(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const Profile(),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.grey,
                      )),
                ],
              )),
          SizedBox(
            height: 5,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(300, 100),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                primary: Colors.white,
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Image.asset("assets/images/book.png",
                        height: 55, width: 55),
                    Text(
                      "Buku Pelajaran",
                      style: TextStyle(color: Colors.black87),
                    )
                  ]),
                  IconButton.filled(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const Profile(),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.grey,
                      )),
                ],
              ))
        ],
      ),
    );
  }
}
