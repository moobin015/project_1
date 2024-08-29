// ignore: file_names
import 'package:flutter/material.dart';

class Scrine_One extends StatefulWidget {
  const Scrine_One({super.key});

  @override
  State<Scrine_One> createState() => _Scrine_OneState();
}

/// ignore: camel_case_types
class _Scrine_OneState extends State<Scrine_One> {
  //
  ///
  final TextEditingController _firstexteditingcontoler =
      TextEditingController();

  ///
  final TextEditingController _senendtexteditingcontoler =
      TextEditingController();

  /// result
  double _result = 0;

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sum_Application'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const SizedBox(height: 16), //Sizbox

            ///first fild
            TextField(
              keyboardType: TextInputType.number,
              controller: _firstexteditingcontoler,
              decoration: InputDecoration(
                hintText: 'Input number',
                labelText: 'Number',
                labelStyle: const TextStyle(fontSize: 016),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            const SizedBox(height: 16), //Sizbox

            ///2nd fild
            TextField(
              keyboardType: TextInputType.number,
              controller: _senendtexteditingcontoler,
              decoration: InputDecoration(
                hintText: 'Input number',
                labelText: 'Number',
                labelStyle: const TextStyle(fontSize: 016),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            const SizedBox(height: 16), //Sizbox
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      _one();
                    },
                    icon: const Text(
                      '+',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Text(
                      '-',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Text(
                      '*',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )),
                IconButton(
                  onPressed: () {},
                  icon: const Text(
                    '/',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            ///1st and 2bnd fild button
            OutlinedButton(
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 24), //Sizbox

            ///
            Text(
              'Result ${_result.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _one() {
    double one = double.tryParse(_firstexteditingcontoler.text) ?? 0;
    double tow = double.tryParse(_senendtexteditingcontoler.text) ?? 0;
    _result = one + tow;
    setState(() {});
  }
}
