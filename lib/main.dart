import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  MySnackbar(sms, context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(sms)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Text',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        toolbarHeight: 70,
        actions: [
          IconButton(
              onPressed: () {
                MySnackbar('Icone tapb', context);
              },
              icon: Icon(Icons.mark_as_unread_sharp,
                  color: Colors.white, size: 25))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          MySnackbar('Floting asctin button', context);
        },
        child: Icon(Icons.sms_failed_sharp, color: Colors.white),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue.withOpacity(0.5),
        selectedItemColor: Colors.yellow,
        elevation: 0.9,
        iconSize: 25,
        selectedFontSize: 16,
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
              label: 'Add'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.mail,
                color: Colors.white,
              ),
              label: 'Mail'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'Home',
          ),
        ],
      ),
    );
  }
}
