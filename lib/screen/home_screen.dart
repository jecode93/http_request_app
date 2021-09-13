import 'package:flutter/material.dart';
import 'package:http_request_app/screen/firstTab.dart';
import 'package:http_request_app/screen/secondTab.dart';
import 'package:http_request_app/widgets/appBar.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({required this.title});

  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: MyAppBar(
            title: widget.title,
          ),
        ),
        body: TabBarView(
          children: [
            FirstTab(),
            SecondTab(),
          ],
        ),
      ),
    );
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
