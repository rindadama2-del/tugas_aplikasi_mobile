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
        body: Center(
          child: LatihanWidget(),
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
      child: const Column(
        children: [
          Text(
            'KEDAI KEKINIAN',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              letterSpacing: 5,
            ),
          ),
          
          SizedBox(height: 20), 
          
          Text(
            'Promo Spesial',
            style: TextStyle(
              fontSize: 30, 
              backgroundColor: Colors.yellow,
              shadows: [
                Shadow(
                  offset: Offset(3, 3),
                  blurRadius: 5,
                ),
              ],
            ),
          ),
          
          SizedBox(height: 15), 
          
          Text(
            'Harga Normal Rp 20.000',
            style: TextStyle(
              fontSize: 20,
              decoration: TextDecoration.lineThrough,
            ),
          ),
          
          Text(
            'Harga Diskon\nRp 12.000',
            style: TextStyle(
              fontSize: 20,
              height: 2, 
            ),
          ),

          SizedBox(height: 20),
          
          Text(
            'TERIMA KASIH BANYAK',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 20,
              wordSpacing: 10,
            ),
          ),
        ],
      ),
    );
  }
}