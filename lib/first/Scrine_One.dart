import 'package:flutter/material.dart';

class Scrine_One extends StatefulWidget {
  const Scrine_One({super.key});

  @override
  State<Scrine_One> createState() => _Scrine_OneState();
}

class _Scrine_OneState extends State<Scrine_One> {
  ///
  final TextEditingController _first_textEditingController = TextEditingController();
  final TextEditingController _secend_textEditingController = TextEditingController();
  double _result = 0;

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appbar'),
      ),
      body: _body_start(),
    );
  }

  Padding _body_start() {
    return Padding(
      padding: const EdgeInsets.all(22),
      child: Column(
        children: [
          ///input one
          TextField(
            controller: _first_textEditingController,
            decoration: InputDecoration(
              focusColor: Colors.green,
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.green, width: 1.2),
                  borderRadius: BorderRadius.circular(20)),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              hintText: 'int number',
              label: const Text('Use Number'),
              hintStyle: TextStyle(
                color: Colors.black54.withOpacity(0.9),
              ),
              labelStyle: const TextStyle(color: Colors.green),
            ),
            maxLength: 5,
          ),
          const SizedBox(height: 16),

          ///input secend
          TextField(
            keyboardType: TextInputType.number,
            controller: _secend_textEditingController,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.green, width: 1.2),
                  borderRadius: BorderRadius.circular(20)),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              hintText: 'int number',
              label: const Text('Use Number'),
              hintStyle: TextStyle(
                color: Colors.black54.withOpacity(0.9),
              ),
              labelStyle: const TextStyle(color: Colors.green),
            ),
            maxLength: 5,
          ),
          const SizedBox(height: 16),
          _bilder_icone_row(),
          const SizedBox(height: 16),
          Text(
            'Result : ${_result.toStringAsFixed(2)}',
            style: const TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
    );
  }

  void res() {
    double one = double.tryParse(_first_textEditingController.text) ?? 0;
    double tow = double.tryParse(_secend_textEditingController.text) ?? 0;
    _result = one + tow;
    setState(() {});
  }

  void remove() {
    double one = double.tryParse(_first_textEditingController.text) ?? 0;
    double tow = double.tryParse(_secend_textEditingController.text) ?? 0;
    _result = one - tow;
    setState(() {});
  }

  void gon() {
    double one = double.tryParse(_first_textEditingController.text) ?? 0;
    double tow = double.tryParse(_secend_textEditingController.text) ?? 0;
    _result = one * tow;
    setState(() {});
  }

  void divider() {
    double one = double.tryParse(_first_textEditingController.text) ?? 0;
    double tow = double.tryParse(_secend_textEditingController.text) ?? 0;
    _result = one / tow;
    setState(() {});
  }

  Row _bilder_icone_row() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OutlinedButton(
          onPressed: res,
          child: const Text(
            '+',
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(width: 10),
        OutlinedButton(
          onPressed: () {
            remove();
          },
          child: const Text(
            '-',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
          ),
        ),
        const SizedBox(width: 10),
        OutlinedButton(
          onPressed: gon,
          child: const Text(
            '*',
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(width: 10),
        OutlinedButton(
          onPressed: divider,
          child: const Text(
            '/',
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
