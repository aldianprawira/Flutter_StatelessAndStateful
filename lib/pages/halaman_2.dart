import 'package:flutter/material.dart';
import './halaman_3.dart';

class HalamanKedua extends StatelessWidget {
  const HalamanKedua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman 2"),
        centerTitle: true,
        leading: const SizedBox(),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Ini halaman kedua"),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("<<< Back"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const HalamanKetiga(),
                    ),
                  );
                },
                child: const Text("Next >>>"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
