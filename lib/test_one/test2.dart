import 'package:flutter/material.dart';

class Test2 extends StatefulWidget {
  const Test2({super.key});

  @override
  State<Test2> createState() => _Test2State();
}

class _Test2State extends State<Test2> {
  ///
  /// c o u n t e r
  double _result = 0;

  ///
  /// k y e w o r d

  ///
  final TextEditingController _first = TextEditingController();
  final TextEditingController _secend = TextEditingController();

  /// f o r m e s e l e c t o r k y e
  final GlobalKey<FormState> _formstat = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: Form(
          key: _formstat,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                controller: _first,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('1st Number'),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter your nuber';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 22),

              /// s e c e n d c o u n t o l e r
              TextFormField(
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter your nuber';
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
                controller: _secend,
                decoration: const InputDecoration(
                  label: Text('2nd Number'),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 22),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(onPressed: add, child: const Text('+')),
                  OutlinedButton(onPressed: remove, child: const Text('-')),
                  OutlinedButton(onPressed: intu, child: const Text('*')),
                  OutlinedButton(onPressed: divider, child: const Text('/')),
                ],
              ),
              const SizedBox(height: 22),
              Text(
                'Result : ${_result.toStringAsFixed(2)}',
                style: const TextStyle(color: Colors.blueAccent, fontSize: 25),
              )
            ],
          ),
        ),
      ),
    );
  }

  void add() {
    if (_formstat.currentState!.validate()) {
      double one = double.tryParse(_first.text) ?? 0;
      double tow = double.tryParse(_secend.text) ?? 0;
      _result = one + tow;
      setState(() {});
    }
  }

  void remove() {
    if (_formstat.currentState!.validate()) {
      double one = double.tryParse(_first.text) ?? 0;
      double tow = double.tryParse(_secend.text) ?? 0;
      _result = one - tow;
      setState(() {});
    }
  }

  void intu() {
    if (_formstat.currentState!.validate()) {
      double one = double.tryParse(_first.text) ?? 0;
      double tow = double.tryParse(_secend.text) ?? 0;
      _result = one * tow;
      setState(() {});
    }
  }

  void divider() {
    if (_formstat.currentState!.validate()) {
      double one = double.tryParse(_first.text) ?? 0;
      double tow = double.tryParse(_secend.text) ?? 0;
      _result = one / tow;
      setState(() {});
    }
  }

  bool valid() {
    if (_first.text.isEmpty) {
      return false;
    } else if (_secend.text.isEmpty) {
      return false;
    } else {
      return true;
    }
  }
}
