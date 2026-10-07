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

  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: BasicTextWidget(),
        ),
      ),
    ),
  );
}

class BasicTextWidget extends StatelessWidget {
  const BasicTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hello, World',
      style: TextStyle(fontSize: 24, color: Colors.blue),
      textAlign: TextAlign.right,
    );
  }
}