import 'package:flutter/material.dart';

void main() {
  //   runApp(
  //     const MaterialApp(
  //       debugShowCheckedModeBanner: false,
  //       home: Scaffold(body: Center(child: Text('Hello World'))),
  //     ),
  //   );
  // }

  //   runApp(const MyWidget());
  // }

  // class MyWidget extends StatelessWidget {
  //   const MyWidget({super.key});
  //   static const hello = 'Hello, World';

  //   @override
  //   Widget build(BuildContext context) {
  //     return MaterialApp(
  //       debugShowCheckedModeBanner: false,
  //       home: Scaffold(
  //         appBar: AppBar(title: const Text('My Widget'),
  //         ),
  //         body: const Center(
  //           child: Text(hello),
  //         ),
  //       ),
  //     );
  //   }
  // }

  //texttyle dasar
  //   runApp(
  //     const MaterialApp(
  //       home: Scaffold(
  //         body: Center(
  //           child: BasicTextWidget(),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // class BasicTextWidget extends StatelessWidget {
  //   const BasicTextWidget({super.key});

  //   @override
  //   Widget build(BuildContext context) {
  //     return const Text(
  //       'Hello, World',
  //       style: TextStyle(fontSize: 24, color: Colors.blue),
  //       textAlign: TextAlign.right,
  //     );
  //   }
  // }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            LatihanWidget(),
          
            SizedBox(height: 20),
            
            OverflowTextWidget(),
            
            SizedBox(height: 20),
            
            RichTextWidget(),
          ],
        ),
      ),
    );
  }
}

class LatihanWidget extends StatelessWidget {
  const LatihanWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: Column(
        children: [
          const Text(
            'KEDAI KEKINIAN',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              letterSpacing: 5,
              color: Colors.purple,
            ),
          ),
          
          const SizedBox(height: 20), 
          
          const Text(
            'Promo Spesial',
            style: TextStyle(
              fontSize: 25, 
              backgroundColor: Colors.blue,
              shadows: [
                Shadow(
                  offset: Offset(3, 3),
                  blurRadius: 5,
                ),
              ],
            ),
          ),
          
          const SizedBox(height: 15), 
          
          const Text(
            'Harga Normal Rp 20.000',
            style: TextStyle(
              fontSize: 20,
              decoration: TextDecoration.lineThrough,
            ),
          ),
          
          const Text(
            'Harga Diskon\nRp 12.000',
            style: TextStyle(
              fontSize: 20,
              height: 2, 
            ),
          ),

          const SizedBox(height: 20),
          
          Container(
            width: double.infinity,
            child: const Text(
              'TERIMA KASIH BANYAK',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 20,
                wordSpacing: 10,
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}

// maxLines dan overflow
class OverflowTextWidget extends StatelessWidget {
  const OverflowTextWidget({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: const Text(
        'Aku sedang belajar mata kuliah aplikasi mobile. Total sksnya 3 ya. '
        'Mata kuliah ini sangat seru karena kita belajar membuat antarmuka pengguna '
        'menggunakan framework Flutter yang canggih. '
        'Happy Coding',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

// RichText dan TextSpan
class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});
  
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        children: [
          TextSpan(
            text: 'hari ini mau ',
          ),
          TextSpan(
            text: 'ngoding',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          TextSpan(
            text: ' atau ',
          ),
          TextSpan(
            text: 'tidur',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}