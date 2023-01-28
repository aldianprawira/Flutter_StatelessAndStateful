import 'package:flutter/material.dart';
import './halaman_2.dart';

class HalamanPertama extends StatelessWidget {
  const HalamanPertama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman 1"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const HalamanKedua(),
              ),
            );
          },
          child: const Text("Next >>>"),
        ),
      ),
    );
  }
}
