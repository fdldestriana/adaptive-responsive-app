import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(106),
        child: AppBar(
          // tinggi dari title ditentukan oleh toolbarHeight
          // maka isi nilai toolbarHeight sama dengan tinggi dari appbar
          toolbarHeight: 106,
          backgroundColor: Colors.amber,
          centerTitle: false,
          elevation: 0.0,
          title: const Padding(
            padding: EdgeInsets.only(right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Shop',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Over 45K Items Available for You',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.person_4_rounded,
                size: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
