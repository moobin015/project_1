
import 'package:flutter/material.dart';
import 'package:project_1/app.dart';



///import 'package:live_class_project/app.dart';



void main() {
  runApp(const WaterTrackerApp());
}



// import 'package:flutter/material.dart';
// import 'package:project_1/test_one/test2.dart';

// void main() {
//   runApp(
//     const MyApp(),
//     // const Sumapp(),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Test2(),
//       title: 'This is Simple Calculetor Application',
//     );
//   }
// }

// // class Myapp extends StatelessWidget {
// //   const Myapp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       home: HomeActivity(),
// //     );
// //   }
// // }

// // class HomeActivity extends StatelessWidget {
// //   const HomeActivity({super.key});
// //
// //   MySnackbar(sms, context) {
// //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(sms)));
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text(
// //           'Text',
// //           style: TextStyle(color: Colors.white, fontSize: 25),
// //         ),
// //         backgroundColor: Colors.blue,
// //         centerTitle: true,
// //         toolbarHeight: 70,
// //         actions: [
// //           IconButton(
// //               onPressed: () {
// //                 MySnackbar('Icone tapb', context);
// //               },
// //               icon: Icon(Icons.mark_as_unread_sharp,
// //                   color: Colors.white, size: 25))
// //         ],
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         backgroundColor: Colors.blue,
// //         onPressed: () {
// //           MySnackbar('Floting asctin button', context);
// //         },
// //         child: Icon(Icons.sms_failed_sharp, color: Colors.white),
// //       ),
// //       bottomNavigationBar: BottomNavigationBar(
// //         backgroundColor: Colors.blue.withOpacity(0.6),
// //         selectedItemColor: Colors.yellow,
// //         elevation: 0.9,
// //         iconSize: 25,
// //         selectedFontSize: 16,
// //         currentIndex: 2,
// //         items: [
// //           BottomNavigationBarItem(
// //               icon: Icon(
// //                 Icons.add,
// //                 color: Colors.white,
// //               ),
// //               label: 'Add'),
// //           BottomNavigationBarItem(
// //               icon: Icon(
// //                 Icons.mail,
// //                 color: Colors.white,
// //               ),
// //               label: 'Mail'),
// //           BottomNavigationBarItem(
// //             icon: Icon(
// //               Icons.home,
// //               color: Colors.white,
// //             ),
// //             label: 'Home',
// //           ),
// //         ],
// //         onTap: (int index) {
// //           if (index == 0) {
// //             MySnackbar('Index $index', context);
// //           } else if (index == 1) {
// //             MySnackbar('$index mail', context);
// //           } else {
// //             MySnackbar('Index home', context);
// //           }
// //         },
// //       ),
// //       drawer: Drawer(
// //         child: ListView(children: [
// //           DrawerHeader(
// //             padding: EdgeInsets.all(0),
// //             child: Column(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               crossAxisAlignment: CrossAxisAlignment.center,
// //               children: [
// //                 Center(
// //                   child: FlutterLogo(size: 45),
// //                 ),
// //                 SizedBox(height: 5),
// //                 Text('Flutter logo',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orange,fontSize: 20),)
// //               ],
// //             ),
// //           ),
// //           ListTile(
// //               title: Text('Home'),
// //               trailing: Icon(Icons.add),
// //               tileColor: Colors.orange.withOpacity(0.42),
// //
// //               onTap: () {},
// //               leading: Icon(Icons.home_max, color: Colors.black)),
// //           ListTile(
// //               title: Text('Profile'),
// //               onTap: () {},
// //               leading: Icon(Icons.perm_identity_rounded)),
// //           ListTile(
// //               title: Text('Map'),
// //               onTap: () {},
// //               leading: Icon(Icons.maps_home_work_outlined)),
// //         ]),
// //       ),
// //
// //     );
// //   }
// // }
