import 'package:flutter/material.dart';
import 'package:slicing_ui/book_category.dart';

class BookShop extends StatelessWidget {
  const BookShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          border: Border.all(
        width: 2.0,
        color: const Color.fromARGB(255, 255, 0, 0),
      )),
      child: Column(
        // verticalDirection: VerticalDirection.down,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Books for Every Taste',
            style: TextStyle(
                color: Colors.pinkAccent,
                fontWeight: FontWeight.bold,
                fontSize: 32),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Choose your favorite book!',
            style: TextStyle(
                color: Colors.pinkAccent,
                fontWeight: FontWeight.w500,
                fontSize: 18),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 45),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                primary: Colors.pinkAccent,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const BookCategory(),
                  ),
                );
              },
              child: Text('Enter Shop')),
          Container(
              alignment: Alignment.bottomRight,
              child: Image.asset('assets/images/splash_screen.png'))
        ],
      ),
    ));
  }
}
