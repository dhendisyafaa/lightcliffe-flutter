import 'package:flutter/material.dart';
import 'package:slicing_ui/book_category.dart';

class BookShop extends StatelessWidget {
  const BookShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      // verticalDirection: VerticalDirection.down,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Books for Every Taste',
          style: TextStyle(
              color: Colors.pinkAccent,
              fontWeight: FontWeight.bold,
              fontSize: 32),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          'Choose your favorite book!',
          style: TextStyle(
              color: Colors.pinkAccent,
              fontWeight: FontWeight.w500,
              fontSize: 18),
        ),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(200, 45),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              backgroundColor: Colors.pinkAccent,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const BookCategory(),
                ),
              );
            },
            child: const Text('Enter Shop')),
        Container(
            alignment: Alignment.bottomRight,
            child: Image.asset('assets/images/splash_screen.png'))
      ],
    ));
  }
}
