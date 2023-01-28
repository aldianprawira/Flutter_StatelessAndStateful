import 'package:flutter/material.dart';

class HalamanKetiga extends StatelessWidget {
  const HalamanKetiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman 3"),
        centerTitle: true,
        leading: const SizedBox(),
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Ini halaman ketiga"),
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
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
                child: const Text("HOME!!!"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
