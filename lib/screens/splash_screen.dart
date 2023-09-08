import 'package:flutter/material.dart';
import 'package:slicing_ui/book_category.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background.png',
          ),
          SafeArea(
              child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 300,
                ),
                const Text(
                  'Books for Every Taste',
                  style: TextStyle(
                      color: Colors.pinkAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 32),
                  textAlign: TextAlign.center,
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
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(200, 45),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        backgroundColor: Colors.pinkAccent),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const BookCategory(),
                        ),
                      );
                    },
                    child: const Text('Enter Shop'))
              ],
            ),
          ))
        ],
      ),
    );
  }
}
