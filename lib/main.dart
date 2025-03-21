// import 'package:belajar_layout/manage_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Layout Screen')),
        drawer: Drawer(
          // <--- ini nambah drawernya pak hehe
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text(
                  'Menu Navigasi',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  // aksi ketika klik menu Home
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  // aksi ketika klik menu Settings
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Container(
            width: 250,
            height: 100,
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.symmetric(vertical: 60, horizontal: 30),
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                'Box Model',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


// ManageWidget(), <--- ini yang langkah ke 3 pak tambahin ini ke home untuk menjalankan langkah ke3
// diwabah ini code biar containernya responsive pak
 // body: Center(
        //   child: Container(
        //     width: MediaQuery.of(context).size.width * 0.8,
        //     height: 200,
        //     color: Colors.blue,
        //     child: Center(
        //       child: Text(
        //         'Responsive Box',
        //         style: TextStyle(
        //           color: Colors.white,
        //           // Ukuran teks yang responsif bro!
        //           fontSize: MediaQuery.of(context).size.width * 0.05,
        //         ),
        //       ),
        //     ),
        //   ),
        // ),