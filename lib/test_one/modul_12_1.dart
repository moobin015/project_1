import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ///final

  final TextEditingController _firstContoler = TextEditingController();
  final TextEditingController _secendContoler = TextEditingController();

  ///

  //counter
  double _resutl = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: buildColumn(),
      ),
    );
  }

  Column buildColumn() {
    return Column(
      children: [
        /// f i r s t c o u n t  o l e r
        TextFormField(
          validator: (String? valu) {
            if (valu == null || valu == valu.isEmpty) {
              return 'Inter your valu';
            } else {
              return null;
            }
          },
          keyboardType: TextInputType.number,
          controller: _firstContoler,
          decoration: const InputDecoration(border: OutlineInputBorder()),
        ),
        const SizedBox(height: 22),

        /// s e c e n d c o u n t o l e r
        TextField(
          keyboardType: TextInputType.number,
          controller: _secendContoler,
          decoration: const InputDecoration(border: OutlineInputBorder()),
        ),
        const SizedBox(height: 22),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            OutlinedButton(onPressed: add, child: const Text('+')),
            OutlinedButton(onPressed: remove, child: const Text('-')),
            OutlinedButton(onPressed: into, child: const Text('*')),
            OutlinedButton(onPressed: divider, child: const Text('/')),
          ],
        ),
        const SizedBox(height: 22),
        Text(
          'Result : ${_resutl.toStringAsFixed(3)}...',
          style: const TextStyle(color: Colors.blueAccent, fontSize: 25),
        )
      ],
    );
  }

  /// a d d
  void add() {
    if (verify() == false) {
      return;
    }

    double one = double.tryParse(_firstContoler.text) ?? 0;
    double tow = double.tryParse(_secendContoler.text) ?? 0;
    _resutl = (one + tow);
    setState(() {});
  }

  /// r e m o v e
  void remove() {
    if (verify() == false) {
      return;
    }
    double one = double.tryParse(_firstContoler.text) ?? 0;
    double tow = double.tryParse(_secendContoler.text) ?? 0;
    _resutl = (one - tow).toDouble();
    setState(() {});
  }

  /// i n t o
  void into() {
    if (verify() == false) {
      return;
    }
    double one = double.tryParse(_firstContoler.text) ?? 0;
    double tow = double.tryParse(_secendContoler.text) ?? 0;
    _resutl = (one * tow);
    setState(() {});
  }

  // d i v i d e r
  void divider() {
    if (verify() == false) {
      return;
    }
    double one = double.tryParse(_firstContoler.text) ?? 0;
    double tow = double.tryParse(_secendContoler.text) ?? 0;
    _resutl = (one / tow);
    setState(() {});
  }

  bool verify() {
    if (_firstContoler.text.isEmpty) {
      return false;
    } else if (_secendContoler.text.isEmpty) {
      return false;
    } else {
      return true;
    }
  }
}
