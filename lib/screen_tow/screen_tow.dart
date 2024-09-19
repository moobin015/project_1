import 'package:flutter/material.dart';
import 'package:project_1/three_screen/three_screen.dart';

class ScreenTow extends StatefulWidget {
  const ScreenTow({super.key});

  @override
  State<ScreenTow> createState() => _ScreenTowState();
}

class _ScreenTowState extends State<ScreenTow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen_Tow'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                '2',
                style: TextStyle(fontSize: 25),
              ),
            ),
            Center(
              child: OutlinedButton(
                onPressed: _navigetor,
                child: const Text('1 Back OKY'),
              ),
            ),
            const SizedBox(height: 10),
            // Center(
            //   child: OutlinedButton(
            //     onPressed: _navigetor,
            //     child: const Text('3 Go'),
            //   ),
            // ),
            const SizedBox(height: 10),
            Center(
              child: OutlinedButton(
                onPressed: _gotothreescreen,
                child: const Text('3 Go OKY'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _navigetor() {
    Navigator.pop(context);
  }

  void _gotothreescreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return ThreeScreen();
        },
      ),
    );
  }
}
