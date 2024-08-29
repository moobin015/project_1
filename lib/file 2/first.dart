import 'package:flutter/material.dart';

class HomeActivity extends StatefulWidget {
  const HomeActivity({super.key});

  @override
  State<HomeActivity> createState() => _HomeState();
}

class _HomeState extends State<HomeActivity> {
  Snack(sms, context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(sms)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: Colors.blueGrey,
          centerTitle: true),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Snack('TextBTN', context);
                  },
                  child: Text('TextBTN')),
              SizedBox(height: 10),
              IconButton(
                  onPressed: () {
                    Snack('IconeButton', context);
                  },
                  icon: const Icon(Icons.smart_button)),
              SizedBox(height: 10),
              OutlinedButton(onPressed: () {Snack('OutlineButton', context);}, child: Text('OutLineButton')),
              SizedBox(height: 10),
              ElevatedButton(onPressed: () {Snack('ElevatedButton', context);}, child: Text('ElevatedButton')),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
