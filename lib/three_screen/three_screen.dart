import 'package:flutter/material.dart';

class ThreeScreen extends StatefulWidget {
  const ThreeScreen({super.key});

  @override
  State<ThreeScreen> createState() => _ThreeScreenState();
}

class _ThreeScreenState extends State<ThreeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen_Three'),
        backgroundColor: Colors.tealAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                '3',
                style: TextStyle(fontSize: 25),
              ),
            ),
            Center(
              child: OutlinedButton(
                onPressed: navigetor,
                child: const Text('1 Go '),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: OutlinedButton(
                onPressed: navigetor,
                child: const Text('2 Go OKY '),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void navigetor() {
    Navigator.pop(context);
  }
}
