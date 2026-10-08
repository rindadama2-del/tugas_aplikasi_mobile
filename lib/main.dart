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

  //spacing
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SpacingTextWidget(),
      ),
    );
  }
}

class SpacingTextWidget extends StatelessWidget {
  const SpacingTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'kedai kekinian',
          style: TextStyle(
            fontSize: 22,
            letterSpacing: 6,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: 20),

        Text(
          '1x Smothies mANGGA  Rp 13.000\n1x Roti Bakar     Rp 15.000\n1x Air Mineral    Rp  5.000',
          style: TextStyle(fontSize: 16, height: 1.8),
        ),

        SizedBox(height: 20),

        Text(
          'TERIMA KASIH DITUNGGU KEDATANGANNYA LAGI',
          style: TextStyle(fontSize: 12, wordSpacing: 4, letterSpacing: 2),
        ),
      ],
    );
  }
}
