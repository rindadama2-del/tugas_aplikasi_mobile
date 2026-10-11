import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all()),
          child: Column(
            children: [
              
              const SizedBox(height: 10),

              const Text(
                'Aku sedang belajar mata kuliah aplikasi mobile. Total sksnya 3 ya. '
                'Mata kuliah ini menantang dan seru banget menggunakan framework Flutter. '
                'Sekarang lagi nyoba ubah text, posisi, dan warna agar terlihat aesthetic. '
                'Happy Coding klo ga banyak eror tapi asikin aja',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),

              const SizedBox(height: 15),

              RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  children: [
                    TextSpan(text: 'hari ini mau '),
                    TextSpan(
                      text: 'ngoding',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    TextSpan(text: ' atau '),
                    TextSpan(
                      text: 'tidur',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}