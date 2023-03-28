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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final PageController controller = PageController();

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
      body: Column(
        children: [
          SizedBox(
            height: 180,
            child: PageView(
              controller: controller,
              children: [
                ...List.generate(
                  3,
                  (index) => Center(
                    child: Container(
                      color: const Color(0xFFCDCDCD),
                      width: 345,
                      height: 180,
                      child: Center(child: Text('${index + 1}')),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'New Arrivals',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Text('See All',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700)),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 23,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 73, crossAxisSpacing: 15, crossAxisCount: 2),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  width: 165,
                  height: 120,
                  color: const Color(0xFFCDCDCD),
                ),
              ),
              itemCount: 4,
            ),
          )
        ],
      ),
    );
  }
}
