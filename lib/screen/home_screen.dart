import 'package:flutter/material.dart';
import 'package:http_request_app/models/httpServices.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({required this.title});

  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(),
    );
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
