import 'package:flutter/material.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSize {
  const DashboardAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // tinggi dari title ditentukan oleh toolbarHeight
      // maka isi nilai toolbarHeight sama dengan tinggi dari appbar
      toolbarHeight: 106,
      backgroundColor: Colors.white,
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
    );
  }

  @override
  Widget get child => this;

  @override
  Size get preferredSize => const Size.fromHeight(106);
}
