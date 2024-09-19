import 'package:flutter/material.dart';
import 'package:project_1/screen_tow/screen_tow.dart';
import 'package:project_1/three_screen/three_screen.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen_One'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                '1',
                style: TextStyle(fontSize: 25),
              ),
            ),
            Center(
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ScreenTow();
                      },
                    ),
                  );
                },
                child: const Text('2 GO OKY'),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ThreeScreen();
                      },
                    ),
                  );
                },
                child: const Text('3 GO'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
