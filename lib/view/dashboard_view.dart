import 'package:adaptive_responsive_app/widget/dashboard_appbar.dart';
import 'package:adaptive_responsive_app/widget/dashboard_body.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: DashboardAppBar(),
      body: DashboardBody(),
    );
  }
}
