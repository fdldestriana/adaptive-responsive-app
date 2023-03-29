import 'package:adaptive_responsive_app/widget/dashboard_appbar.dart';
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DashboardView(),
    );
  }
}

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView>
    with TickerProviderStateMixin {
  final PageController pageController = PageController();
  TabController? tabController;
  int index = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const DashboardAppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 180,
            child: PageView(
              onPageChanged: (int pageIndex) {
                setState(() => tabController!.index = pageIndex);
              },
              controller: pageController,
              children: [
                ...List.generate(
                  4,
                  (index) => Center(
                    child: Image.network(
                      "https://picsum.photos/id/${index + 16}/345/180",
                      // color: const Color(0xFFCDCDCD),
                      width: 345,
                      height: 180,
                      fit: BoxFit.fill,
                      // child: Center(child: Text('${index + 1}')),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          TabPageSelector(
            controller: tabController,
          ),
          const SizedBox(
            height: 15,
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
                  childAspectRatio: 1 / 1.03, crossAxisCount: 2),
              itemBuilder: (context, index) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    "https://picsum.photos/id/${index + 10}/165/120",
                    width: 165,
                    height: 120,
                    fit: BoxFit.fill,
                  ),
                  const Text('New Trend',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                  const Expanded(
                    child: Text('Dress like a tourist',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400)),
                  )
                ],
              ),
              itemCount: 4,
            ),
          )
        ],
      ),
    );
  }
}
