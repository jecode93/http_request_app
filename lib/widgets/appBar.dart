import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final String? title;
  const MyAppBar({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(100),
      child: AppBar(
        title: Text(title!),
        bottom: TabBar(
          labelStyle: TextStyle(fontSize: 20),
          tabs: [
            Tab(
              text: ('Tab 1'),
            ),
            Tab(
              text: ('Tab 2'),
            ),
          ],
        ),
      ),
    );
  }
}
